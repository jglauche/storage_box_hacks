module Path(){
  translate([0, 0, -0.002])union(){
      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])cylinder(d=3.4,h=13.008,$fn=64);
          translate([-13.95, 0, -0.002])cylinder(d=3.4,h=13.008,$fn=64);
        }

      translate([-13.95, 0, -0.002])linear_extrude(height=13)translate([0, 5.45, 0])rotate([0, 0, 180])intersection(){
                difference(){
                  circle(d=14.3,$fn=64);
                  circle(d=7.5,$fn=64);
                }

                polygon(points=[[0, 0], [0, 0.143e2], [0.143e2, 0.875622461390357538e-15]],convexity=10);
              }

      translate([0, 0, -0.002])hull(){
          translate([-19.4, 5.449999999999998, -0.002])cylinder(d=3.4,h=13.008,$fn=64);
          translate([-19.4, 29.45000000000001, -0.002])cylinder(d=3.4,h=13.008,$fn=64);
        }

      translate([-19.4, 29.45000000000001, -0.002])linear_extrude(height=13)translate([5.45, 0, 0])rotate([0, 0, 90])intersection(){
                difference(){
                  circle(d=14.3,$fn=64);
                  circle(d=7.5,$fn=64);
                }

                polygon(points=[[0, 0], [0, 0.143e2], [0.143e2, 0.875622461390357538e-15]],convexity=10);
              }

      translate([0, 0, -0.002])hull(){
          translate([-13.950000000000001, 34.900000000000006, -0.002])cylinder(d=3.4,h=13.008,$fn=64);
          translate([-6.674325055353074e-16, 34.900000000000006, -0.002])cylinder(d=3.4,h=13.008,$fn=64);
        }

    }
}
module SmdDispenser_strip_h_12_strip_w_2_5(){
  difference(){
    color("pink")union(){
        translate([0, 0, 1.6])difference(){
            union()linear_extrude(height=12)translate([2.5, 2.5, 0])hull(){
                    circle(d=5,$fn=64);
                    translate([96, 0, 0])circle(d=5,$fn=64);
                    translate([0, 38.1, 0])circle(d=5,$fn=64);
                    translate([96, 38.1, 0])circle(d=5,$fn=64);
                  }

            translate([22.6, 38.900000000000006, -0.002])union(){
                translate([6.674325055353074e-16, -34.900000000000006, -0.002])union(){
                    translate([0, 0, -0.002])Path();
                    translate([0, 14.500000000000004, 0])hull(){
                        translate([0, 0, -0.1])cylinder(d=32.4,h=13.208,$fn=130);
                        translate([61.19999999999999, 0, -0.1])cylinder(d=32.4,h=13.408,$fn=130);
                      }

                  }

                translate([0, 0, -0.004])hull(){
                    translate([0, -1.7, -0.004])cube([10, 3.4, 12.016]);
                    translate([5, -1.45, -0.004])cube([10, 2.9, 12.016]);
                  }

                translate([0, -1.45, -0.004])color("blue")cube([101, 2.9, 12.016]);
                translate([37, 0, -0.004])hull(){
                    translate([1, 8.5, -0.004])cube([6, 0.001, 12.016]);
                    translate([-3, 0, -0.004])cube([3, 0.001, 12.016]);
                  }

                translate([45, 0, -0.1])cube([20, 10.2, 13.208]);
              }

          }

        union()linear_extrude(height=1.6)translate([2.5, 2.5, 0])hull(){
                circle(d=5,$fn=64);
                translate([96, 0, 0])circle(d=5,$fn=64);
                translate([0, 38.1, 0])circle(d=5,$fn=64);
                translate([96, 38.1, 0])circle(d=5,$fn=64);
              }

      }

    translate([-0.1, 42.75, -0.1])color("silver")cube([50.2, 0.5, 14.8]);
    translate([0, 0, 1])color("Aquamarine")union(){
          translate([2, 0, -0.1])cube([5.5, 2.05, 14.8]);
          translate([93.5, 0, -0.1])cube([5.5, 2.05, 15]);
        }

  }
}
$fn=64;
SmdDispenser_strip_h_12_strip_w_2_5();
