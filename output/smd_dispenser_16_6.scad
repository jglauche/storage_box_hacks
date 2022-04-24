module Path(){
  translate([0, 0, -0.002])union(){
      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])translate([0, 0, 0])cylinder(d=6.9,h=17.048000000000002,$fn=64);
          translate([0, 0, -0.002])translate([-12.200000000000001, 0, 0])cylinder(d=6.9,h=17.048000000000002,$fn=64);
        }

      translate([0, 0, -0.002])translate([-12.200000000000001, 0, 0])linear_extrude(height=17)translate([0, 7.2, 0])rotate([0, 0, 180])intersection(){
                  difference(){
                    circle(d=21.3);
                    circle(d=7.5);
                  }

                  translate([0, 0, -0.1])polygon(points=[[0, 0], [0, 21.3], [21.3, 1.3042488410919313e-15]]);
                }

      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])translate([-19.400000000000002, 7.199999999999998, 0])cylinder(d=6.9,h=17.048000000000002,$fn=64);
          translate([0, 0, -0.002])translate([-19.400000000000002, 24.2, 0])cylinder(d=6.9,h=17.048000000000002,$fn=64);
        }

      translate([0, 0, -0.002])translate([-19.400000000000002, 24.2, 0])linear_extrude(height=17)translate([7.2, 0, 0])rotate([0, 0, 90])intersection(){
                  difference(){
                    circle(d=21.3);
                    circle(d=7.5);
                  }

                  translate([0, 0, -0.1])polygon(points=[[0, 0], [0, 21.3], [21.3, 1.3042488410919313e-15]]);
                }

      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])translate([-12.200000000000003, 31.4, 0])cylinder(d=6.9,h=17.048000000000002,$fn=64);
          translate([0, 0, -0.002])translate([-1.7763568394002505e-15, 31.4, 0])cylinder(d=6.9,h=17.048000000000002,$fn=64);
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

            translate([0, 0, -0.002])translate([1.5, 2.3, 0])translate([22.85, 34.85, 0])union(){
                    translate([0, 0, -0.002])translate([1.7763568394002505e-15, -31.4, 0])union(){
                          translate([0, 0, -0.002])Path();
                          translate([0, 11, 0])hull(){
                              translate([0, 0, -0.1])cylinder(d=28.900000000000002,h=17.208000000000002,$fn=116);
                              translate([0, 0, -0.1])translate([61.19999999999999, 0, 0])cylinder(d=28.900000000000002,h=17.408,$fn=116);
                            }

                        }

                    translate([0, 0, -0.004])hull(){
                        translate([0, -3.45, 0])translate([0, 0, -0.004])cube([10, 6.9, 16.016]);
                        translate([0, -3.2, 0])translate([0, 0, -0.004])translate([5, 0, 0])cube([10, 6.4, 16.016]);
                      }

                    translate([0, -3.2, 0])translate([0, 0, -0.004])color("blue")cube([101, 6.4, 16.016]);
                    translate([0, 0, -0.004])translate([37, 0, 0])hull(){
                          translate([0, 0, 0])translate([0, 0, -0.004])translate([1, 17.25, 0])cube([6, 0.001, 16.016]);
                          translate([0, 0, 0])translate([0, 0, -0.004])translate([-3, 0, 0])cube([3, 0.001, 16.016]);
                        }

                    translate([0, 0, 0])translate([0, 0, -0.1])translate([45, 0, 0])cube([20, 20.700000000000003, 17.208000000000002]);
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
    translate([0, 0, 1])color("HotPink")union(){
          translate([0, 0, 0])translate([0, 0, -0.1])translate([2, 0, 0])cube([5.5, 2.05, 18.8]);
          translate([0, 0, 0])translate([0, 0, -0.1])translate([93.5, 0, 0])cube([5.5, 2.05, 19.0]);
        }

  }
}
$fn=64;
SmdDispenser();
