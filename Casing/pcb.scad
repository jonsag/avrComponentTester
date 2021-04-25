//
// NopSCADlib Copyright Chris Palmer 2020
// nop.head@gmail.com
// hydraraptor.blogspot.com
//
// This file is part of NopSCADlib.
//
// NopSCADlib is free software: you can redistribute it and/or modify it under the terms of the
// GNU General Public License as published by the Free Software Foundation, either version 3 of
// the License, or (at your option) any later version.
//
// NopSCADlib is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
// without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License along with NopSCADlib.
// If not, see <https://www.gnu.org/licenses/>.
//

include <../../myCAD/OpenSCADlibraries/NopSCADlib/core.scad>
include <../../myCAD/OpenSCADlibraries/NopSCADlib/vitamins/leds.scad>

use <../../myCAD/OpenSCADlibraries/NopSCADlib/vitamins/pcb.scad>

pcb = ["avrComponentTester", "avrComponentTester",
	    104.14, 61.59, 1.6, // length, width, thickness
	    1,      // Corner radius
	    3.2,   // Mounting hole diameter
	    6.65,    // Pad around mounting hole
	    "green",// Color
	    true,   // True if the parts should be separate BOM items
	    // hole offsets, [lower left], [upper left], [lower right], [upper right]
	    [ [4.45, 4.45], [4.45, -4.45], [-11.45, 4.45], [-11.45, -4.45] ],
	    // components
	    [
	     [ 11.43 + 2.54,  58.42,   0, "2p54header", 3, 1],
	     [ 93.34,  13.34 + 2.54,   90, "2p54socket", 3, 1],
	     [ 35.91 + 2.54 * 3.5,  3.31,   0, "2p54socket", 8, 1],
	     [  10.79,  18.41,   0, "led", LED5mm, "red"],
	     [  4.45, 46.99, 180, "barrel_jack"],
	     [ 86.88, 43.85,   0, "potentiometer", 5, 8],
	     [ 40.01 + 2.54 * 1.5, 20.32 + 6.5 * 2.54,   180, "pdip", 28, "ATmega328P", true ],
	     ],
	    // accessories
	    []
	    ];

module oledHoles() {
  holes = [[30.48, 3.81],
	   [59.05, 3.81],
	   [59.05, 55.88],
	   [30.48, 55.88]];
  
  for(i = holes) {
    translate([-104.14 / 2 + i[0], -61.59 / 2 + i[1], -0.4 / 2])
      cylinder(h = 2, d = 3.2, $fn = 100);
  }
}

module testOutlets() {
    holes = [[99.06, 8.89],
	     [99.06, 15.24],
	     [99.06, 22.23],
	     [99.06, 41.27],
	     [99.06, 47.62],
	     [99.06, 53.98]];

  for(i = holes) {
    translate([-104.14 / 2 + i[0], -61.59 / 2 + i[1], -0.4 / 2])
      cylinder(h = 2, d = 3.2, $fn = 100);
  }
}

/*
if($preview) {
     difference() {
    let($show_threads = true)
      pcb(pcb);
    
    oledHoles();
    testOutlets();
    }
}
*/
