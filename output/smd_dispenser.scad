module Path(){
  translate([0, 0, -0.002])union(){
      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])translate([0, 0, 0])cylinder(d=2.9,h=11.047999999999998,$fn=64);
          translate([0, 0, -0.002])translate([-14.200000000000003, 0, 0])cylinder(d=2.9,h=11.047999999999998,$fn=64);
        }

      translate([0, 0, -0.002])translate([-14.200000000000003, 0, 0])linear_extrude(height=11)translate([0, 5.2, 0])rotate([0, 0, 180])intersection(){
                  difference(){
                    circle(d=13.3);
                    circle(d=7.5);
                  }

                  translate([0, 0, -0.1])polygon(points=[[0, 0], [0, 13.3], [13.3, 8.143901214329899e-16]]);
                }

      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])translate([-19.400000000000002, 5.199999999999998, 0])cylinder(d=2.9,h=11.047999999999998,$fn=64);
          translate([0, 0, -0.002])translate([-19.400000000000002, 30.200000000000006, 0])cylinder(d=2.9,h=11.047999999999998,$fn=64);
        }

      translate([0, 0, -0.002])translate([-19.400000000000002, 30.200000000000006, 0])linear_extrude(height=11)translate([5.2, 0, 0])rotate([0, 0, 90])intersection(){
                  difference(){
                    circle(d=13.3);
                    circle(d=7.5);
                  }

                  translate([0, 0, -0.1])polygon(points=[[0, 0], [0, 13.3], [13.3, 8.143901214329899e-16]]);
                }

      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])translate([-14.200000000000003, 35.400000000000006, 0])cylinder(d=2.9,h=11.047999999999998,$fn=64);
          translate([0, 0, -0.002])translate([0, 35.400000000000006, 0])cylinder(d=2.9,h=11.047999999999998,$fn=64);
        }

    }
}
module SmdDispenser(){
  difference(){
    color("pink")union(){
        translate([0, 0, 1.6])difference(){
            translate([0, 0, 0])union()translate([2.5, 2.5, 0])hull(){
                    cylinder(d=5,h=10,$fn=64);
                    translate([96, 0, 0])cylinder(d=5,h=10,$fn=64);
                    translate([0, 38.1, 0])cylinder(d=5,h=10,$fn=64);
                    translate([96, 38.1, 0])cylinder(d=5,h=10,$fn=64);
                  }

            translate([0, 0, -0.002])translate([1.5, 2.3, 0])translate([20.85, 36.85000000000001, 0])union(){
                    translate([0, 0, -0.002])translate([0, -35.400000000000006, 0])union(){
                          translate([0, 0, -0.002])Path();
                          translate([0, 15.000000000000004, 0])hull(){
                              translate([0, 0, -0.1])cylinder(d=32.900000000000006,h=11.207999999999998,$fn=132);
                              translate([0, 0, -0.1])translate([61.19999999999999, 0, 0])cylinder(d=32.900000000000006,h=11.407999999999998,$fn=132);
                            }

                        }

                    translate([0, 0, -0.004])hull(){
                        translate([0, -1.45, 0])translate([0, 0, -0.004])cube([10, 2.9, 10.015999999999998]);
                        translate([0, -0.5, 0])translate([0, 0, -0.004])translate([5, 0, 0])cube([10, 1.0, 10.015999999999998]);
                      }

                    translate([0, -0.5, 0])translate([0, 0, -0.004])color("blue")cube([101, 1.0, 10.015999999999998]);
                    translate([0, 0, -0.004])translate([37, 0, 0])hull(){
                          translate([0, 0, 0])translate([0, 0, -0.004])translate([1, 7.25, 0])cube([6, 0.001, 10.015999999999998]);
                          translate([0, 0, 0])translate([0, 0, -0.004])translate([-3, 0, 0])cube([3, 0.001, 10.015999999999998]);
                        }

                    translate([0, 0, 0])translate([0, 0, -0.1])translate([45, 0, 0])cube([20, 8.7, 11.207999999999998]);
                  }

          }

        translate([0, 0, 0])union()translate([2.5, 2.5, 0])hull(){
                cylinder(d=5,h=1.6,$fn=64);
                translate([96, 0, 0])cylinder(d=5,h=1.6,$fn=64);
                translate([0, 38.1, 0])cylinder(d=5,h=1.6,$fn=64);
                translate([96, 38.1, 0])cylinder(d=5,h=1.6,$fn=64);
              }

      }

    translate([-25.1, -0.25, 0])translate([0, 0, -0.1])translate([25, 43, 0])color("silver")cube([50.2, 0.5, 12.799999999999999]);
    translate([0, 0, 1])color("MediumVioletRed")union(){
          translate([0, 0, 0])translate([0, 0, -0.1])translate([2, 0, 0])cube([5.5, 2.05, 12.799999999999999]);
          translate([0, 0, 0])translate([0, 0, -0.1])translate([93.5, 0, 0])cube([5.5, 2.05, 12.999999999999998]);
        }

  }
}
$fn=64;
SmdDispenser();
