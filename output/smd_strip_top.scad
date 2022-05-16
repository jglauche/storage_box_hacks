module SmdStripTop(){
  translate([0, 0, 34])rotate([0, 180, 0])difference(){
        translate([-24.5, -50.5, 0])union()linear_extrude(height=34)translate([2.5, 2.5, 0])hull(){
                  circle(d=5,$fn=64);
                  translate([44, 0, 0])circle(d=5,$fn=64);
                  translate([0, 96, 0])circle(d=5,$fn=64);
                  translate([44, 96, 0])circle(d=5,$fn=64);
                }

        translate([-23.9, -49.25, -0.002])union()linear_extrude(height=31.004)translate([2.5, 2.5, 0])hull(){
                  circle(d=5,$fn=64);
                  translate([42.8, 0, 0])circle(d=5,$fn=64);
                  translate([0, 93.5, 0])circle(d=5,$fn=64);
                  translate([42.8, 93.5, 0])circle(d=5,$fn=64);
                }

        translate([-8.6, 23.4, 33])rotate([-30, 0, 0])cube([17.2, 17.2, 6]);
        translate([0, -10, 28.1])mirror([0, 1, 0])mirror([1, 0, 0])union(){
                translate([0, 14.95, -10.1])rotate([0, 90, 0])rotate_extrude(angle=180)translate([10, 0, -0.1])rotate([0, 0, 90])projection()translate([0, 0, -0.002])rotate([90, 0, 0])union(){
                                  translate([-8.6, -15, 6])cube([17.2, 30, 3]);
                                  translate([-4.2, -15, -0.002])cube([11.1, 30, 6.008]);
                                }

                translate([0, 0, -0.002])union(){
                    translate([-8.6, -15, 6])cube([17.2, 30, 3]);
                    translate([-4.2, -15, -0.002])cube([11.1, 30, 6.008]);
                  }

              }

      }
}
$fn=64;
color("OrangeRed")SmdStripTop();
