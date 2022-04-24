module Path(){
  translate([0, 0, -0.002])union(){
      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])translate([0, 0, 0])cylinder(d=4.9,h=17.048000000000002,$fn=64);
          translate([0, 0, -0.002])translate([-13.200000000000001, 0, 0])cylinder(d=4.9,h=17.048000000000002,$fn=64);
        }

      translate([0, 0, -0.002])translate([-13.200000000000001, 0, 0])linear_extrude(height=17)translate([0, 6.2, 0])rotate([0, 0, 180])intersection(){
                  difference(){
                    circle(d=17.3);
                    circle(d=7.5);
                  }

                  translate([0, 0, -0.1])polygon(points=[[0, 0], [0, 17.3], [17.3, 1.0593194812624606e-15]]);
                }

      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])translate([-19.400000000000002, 6.199999999999998, 0])cylinder(d=4.9,h=17.048000000000002,$fn=64);
          translate([0, 0, -0.002])translate([-19.400000000000002, 27.2, 0])cylinder(d=4.9,h=17.048000000000002,$fn=64);
        }

      translate([0, 0, -0.002])translate([-19.400000000000002, 27.2, 0])linear_extrude(height=17)translate([6.2, 0, 0])rotate([0, 0, 90])intersection(){
                  difference(){
                    circle(d=17.3);
                    circle(d=7.5);
                  }

                  translate([0, 0, -0.1])polygon(points=[[0, 0], [0, 17.3], [17.3, 1.0593194812624606e-15]]);
                }

      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])translate([-13.200000000000003, 33.4, 0])cylinder(d=4.9,h=17.048000000000002,$fn=64);
          translate([0, 0, -0.002])translate([-1.7763568394002505e-15, 33.4, 0])cylinder(d=4.9,h=17.048000000000002,$fn=64);
        }

    }
}
module SmdDispenser(){
  difference(){
    color("pink")union(){
        translate([0, 0, 1.6])difference(){
            translate([0, 0, 0])union()translate([2.5, 2.5, 0])hull(){
                    cylinder(d=5,h=16,$fn=64);
                    translate([96, 0, 0])cylinder(d=5,h=16,$fn=64);
                    translate([0, 38.1, 0])cylinder(d=5,h=16,$fn=64);
                    translate([96, 38.1, 0])cylinder(d=5,h=16,$fn=64);
                  }

            translate([0, 0, -0.002])translate([1.5, 2.3, 0])translate([21.85, 35.85, 0])union(){
                    translate([0, 0, -0.002])translate([1.7763568394002505e-15, -33.4, 0])union(){
                          translate([0, 0, -0.002])Path();
                          translate([0, 13, 0])hull(){
                              translate([0, 0, -0.1])cylinder(d=30.900000000000002,h=17.208000000000002,$fn=124);
                              translate([0, 0, -0.1])translate([61.19999999999999, 0, 0])cylinder(d=30.900000000000002,h=17.408,$fn=124);
                            }

                        }

                    translate([0, 0, -0.004])hull(){
                        translate([0, -2.45, 0])translate([0, 0, -0.004])cube([10, 4.9, 16.016]);
                        translate([0, -2.2, 0])translate([0, 0, -0.004])translate([5, 0, 0])cube([10, 4.4, 16.016]);
                      }

                    translate([0, -2.2, 0])translate([0, 0, -0.004])color("blue")cube([101, 4.4, 16.016]);
                    translate([0, 0, -0.004])translate([37, 0, 0])hull(){
                          translate([0, 0, 0])translate([0, 0, -0.004])translate([1, 12.25, 0])cube([6, 0.001, 16.016]);
                          translate([0, 0, 0])translate([0, 0, -0.004])translate([-3, 0, 0])cube([3, 0.001, 16.016]);
                        }

                    translate([0, 0, 0])translate([0, 0, -0.1])translate([45, 0, 0])cube([20, 14.700000000000001, 17.208000000000002]);
                  }

          }

        translate([0, 0, 0])union()translate([2.5, 2.5, 0])hull(){
                cylinder(d=5,h=1.6,$fn=64);
                translate([96, 0, 0])cylinder(d=5,h=1.6,$fn=64);
                translate([0, 38.1, 0])cylinder(d=5,h=1.6,$fn=64);
                translate([96, 38.1, 0])cylinder(d=5,h=1.6,$fn=64);
              }

      }

    translate([-25.1, -0.25, 0])translate([0, 0, -0.1])translate([25, 43, 0])color("silver")cube([50.2, 0.5, 18.8]);
    translate([0, 0, 1])color("SteelBlue")union(){
          translate([0, 0, 0])translate([0, 0, -0.1])translate([2, 0, 0])cube([5.5, 2.05, 18.8]);
          translate([0, 0, 0])translate([0, 0, -0.1])translate([93.5, 0, 0])cube([5.5, 2.05, 19.0]);
        }

  }
}
$fn=64;
SmdDispenser();
