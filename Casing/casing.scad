// casing.scad

include <pcb.scad>
include <st7735.scad>

// layout for printing
print = true;

// what to show
showPCB = true;
showOLED = true;

showCaseBottom = false;
showCaseLid = true;

// PCB size
pcbX = 104.14;
pcbY = 61.59;
pcbZ = 1.6;

// case
caseWall = 2;

standoffHeight = 7;
standoffDia = 7;
standoffHole = 5;
standoffPos = [ [-pcbX / 2 + 4.45, -pcbY / 2 + 4.45],
		[-pcbX / 2 + 4.45, pcbY / 2 - 4.45],
		[pcbX / 2 - 11.45, -pcbY / 2 + 4.45],
		[pcbX / 2 - 11.45, pcbY / 2 - 4.45] ];

// power inlet
piDia = 10;

// rotary encoder
reHoleDia = 10;

// test jacks
tjDia = 8.33;
tjWidth = 6.35;

// case oversizes
osL = 3;
osR = 20;
osD = 12;
osU = 12;
osZ = 16;

// tolerance between case and lid
tolerance = 0.3;

// lid screws
lsStandDia = 10;
lsHoleDia = 5;
lsScrewHoleDia = 3.2;

// calculations
boxWidth = pcbX + osL + osR + caseWall * 2;
boxDepth = pcbY + osD + osU + caseWall * 2;
boxHeight = standoffHeight + pcbZ + osZ + caseWall;

boxOffsetX = (osR - osL) / 2;
boxOffsetY = (osU - osD) / 2;
boxOffsetZ = boxHeight / 2 - caseWall - standoffHeight;

// start drawing
if (showCaseBottom) {
  translate([boxOffsetX, boxOffsetY, boxOffsetZ])
  union() {
    // case bottom and walls
    color("azure", 1) {
	difference() {
	translate([0, 0, 0])
	  cube([boxWidth, boxDepth, boxHeight], center = true);
	translate([0, 0, caseWall])
	  cube([boxWidth - caseWall * 2, boxDepth - caseWall * 2, boxHeight], center = true);
	
	// power inlet
	translate([-boxWidth / 2 + caseWall / 2,
		   -boxDepth / 2 + 46.99 + osD + caseWall,
		   -boxHeight / 2 + caseWall + standoffHeight + pcbZ + 6.5])
	  rotate([0, 90, 0])
	  cylinder(h = caseWall * 2, d = piDia, center = true);
	}
    }
    // PCB standoffs
    for (i = standoffPos) {
      translate([i[0] - boxOffsetX,
		 i[1] - boxOffsetY,
		 -boxHeight / 2 + standoffHeight / 2 + caseWall])
	difference() {
	cylinder(h = standoffHeight, d1 = standoffDia + 4, d2 = standoffDia, center = true);
	cylinder(h = standoffHeight, d = standoffHole, center = true);
      }
    }

    // lid screw stands
    for (x = [-boxWidth / 2 + lsStandDia / 2, boxWidth / 2 - lsStandDia / 2]) {
      for (y = [-boxDepth / 2 + lsStandDia / 2 , boxDepth / 2 - lsStandDia / 2]) {
	translate([x, y, 0])
	difference() {
	  cylinder(h = boxHeight - caseWall * 2 - tolerance, d = lsStandDia, center = true);
	  cylinder(h = boxHeight, d = lsHoleDia, center = true);
	}
      }
    }
  }
 }

// lid
if (showCaseLid) {
  lidPosX = print ? boxOffsetX + boxWidth + 10 : boxOffsetX;
  lidPosY = print ? boxOffsetY : boxOffsetY;
  lidPosZ = print ? -boxHeight / 2 + boxOffsetZ + caseWall / 2: -caseWall / 2 - standoffHeight + boxHeight;
  lidRotateX = print ? 180 : 0;
  
  translate([lidPosX, lidPosY, lidPosZ])
    rotate([lidRotateX, 0, 0])
    union() {
    difference() {
      cube([boxWidth, boxDepth, caseWall], center = true);
      
      // rotary encoder hole
      translate([-pcbX / 2 + 86.88 - boxOffsetX, -pcbY / 2 + 43.85 - boxOffsetY, 0])
	cylinder(h = caseWall * 2, d = reHoleDia, center = true);
      
      // screen hole
      translate([-pcbX / 2 - boxOffsetX + 35.91 + 2.54 * 3.5, -pcbY / 2 + 32 - boxOffsetY, 0])
	cube([34 - 0.9 * 2, 38.5, caseWall * 2], center = true);
      
      // led hole
      translate([-pcbX / 2 + 10.79 - boxOffsetX, -pcbY / 2 + 18.41 - boxOffsetY, 0])
	cylinder(h = caseWall * 2, d = 2, center = true);
      
      // test socket
      translate([-pcbX / 2 - boxOffsetX + 93.34, -pcbY / 2 + 13.34 + 2.54 - boxOffsetY, 0])
	cube([4, 10, caseWall * 2], center = true);
      
      // test jacks
      for (y = [-boxDepth / 2 + boxDepth / 7: boxDepth / 7 : boxDepth / 2 - boxDepth / 7]) {
	translate([boxWidth / 2 - tjDia * 2, y, 0])
	intersection() {
	  cylinder(h = caseWall * 2, d = tjDia, center = true);
	  cube([tjDia, tjWidth, caseWall * 2], center = true);
	}
	// screw holes
	for (x = [-boxWidth / 2 + lsStandDia / 2, boxWidth / 2 - lsStandDia / 2]) {
	  for (y = [-boxDepth / 2 + lsStandDia / 2 , boxDepth / 2 - lsStandDia / 2]) {
	    translate([x, y, 0])
	      cylinder(h = caseWall * 3, d = lsScrewHoleDia, center = true);
	  }
	}
      }
    }
    
    // ridge under lid
    translate([0, 0, -caseWall])
      color("red")
      difference() {
      cube([boxWidth - caseWall - tolerance, boxDepth - caseWall - tolerance, caseWall], center = true);

      cube([boxWidth - caseWall * 2 - tolerance, boxDepth - caseWall * 2 - tolerance, caseWall * 2], center = true);
    }    
 }
 }
// pcb
if (showPCB && !print) {
  translate([0, 0, 0])
    difference() {                                                                
    let($show_threads = true)
      pcb(pcb);
    
    oledHoles();
    testOutlets();
  }
 }

// oled screen
if (showOLED && !print) {
  translate([-7.25, -1, 14.3])
    rotate([180, 0, 90])
    st7735v1(false);
 }

