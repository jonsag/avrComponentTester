// st7735.scad

include <../../myCAD/OpenSCADlibraries/NopSCADlib/core.scad>
include <../../myCAD/OpenSCADlibraries/NopSCADlib/vitamins/leds.scad>
include <../../myCAD/OpenSCADlibraries/NopSCADlib/vitamins/pin_headers.scad>

use <../../myCAD/OpenSCADlibraries/NopSCADlib/vitamins/pcb.scad>

st7735wSD = ["st7735wSD", "st7735wSD",
	     58, 34.2, 1.6, // length, width, thickness
	     1,      // Corner radius
	     3.2,   // Mounting hole diameter
	     5,    // Pad around mounting hole
	     "red",// Color                                                       
	     true,   // True if the parts should be separate BOM items
	     // hole offsets, [lower left], [upper left], [lower right], [upper right]
	     [ [3.1, 3.1], [3.1, -3.1], [-3.1, 3.1], [-3.1, -3.1] ],
            // components
	     [
	      [ 2.5,  34.2 / 2,   90, "2p54header", 8, 1],
	      ],
            // accessories
	     []
            ];

module st7735v1(sdPins = true) {
  pcb(st7735wSD);
  // OLED pins
  if (sdPins) {
    translate([58 / 2 - 2.5, 0, 1.6])
    rotate([0, 0, 90])
    pin_header(2p54header, 4, 1);
  }

  // screen
  translate([(51.4 - 50.3)  / 2, 0, 0]) {
  // screen frame
  translate([0, 0, -2.9 / 2]) {
    color("white")
      difference() {
      cube([43.7, 34, 2.9], center = true);
      translate([0, 0, -0.1])
	cube([43.7 - 0.7 * 2, 34 - 0.7 * 2, 2.9], center = true);
    }
  }
  // screen base
  translate([0, 0, -2.5 / 2])
    color("grey")
    cube([43.7 - 0.9 * 2, 34 - 0.9 * 2, 2.5], center = true);

  // screen
  translate([(43.7 - 0.9 * 2 - 38.5) / 2, 0, -2.9 / 2])
    color("black")
    cube([38.5, 34 - 0.9 * 2, 2.9], center = true);
  }

  // sd card slot
  translate([0, -16.9 / 2, 1.6 + 2.5 / 2])
    difference() {
    color("lightgrey")
    cube([21.6, 16.9, 2.5], center = true);
    translate([0, -0.1, 0])
    cube([21.4, 16.9, 2.4], center = true);
  }
}

/*
if ($preview) {
  st7735v1(false);
 }
*/
