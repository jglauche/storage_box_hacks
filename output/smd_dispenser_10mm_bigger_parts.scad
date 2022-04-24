module Path(){
  translate([0, 0, -0.002])union(){
      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])translate([0, 0, 0])cylinder(d=3.85,h=11.047999999999998,$fn=64);
          translate([0, 0, -0.002])translate([-13.725, 0, 0])cylinder(d=3.85,h=11.047999999999998,$fn=64);
        }

      translate([0, 0, -0.002])translate([-13.725, 0, 0])linear_extrude(height=11)translate([0, 5.675, 0])rotate([0, 0, 180])intersection(){
                  difference(){
                    circle(d=15.2);
                    circle(d=7.5);
                  }

                  translate([0, 0, -0.1])polygon(points=[[0, 0], [0, 15.2], [15.2, 9.307315673519883e-16]]);
                }

      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])translate([-19.4, 5.674999999999998, 0])cylinder(d=3.85,h=11.047999999999998,$fn=64);
          translate([0, 0, -0.002])translate([-19.4, 28.775, 0])cylinder(d=3.85,h=11.047999999999998,$fn=64);
        }

      translate([0, 0, -0.002])translate([-19.4, 28.775, 0])linear_extrude(height=11)translate([5.675, 0, 0])rotate([0, 0, 90])intersection(){
                  difference(){
                    circle(d=15.2);
                    circle(d=7.5);
                  }

                  translate([0, 0, -0.1])polygon(points=[[0, 0], [0, 15.2], [15.2, 9.307315673519883e-16]]);
                }

      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])translate([-13.725, 34.449999999999996, 0])cylinder(d=3.85,h=11.047999999999998,$fn=64);
          translate([0, 0, -0.002])translate([0, 34.449999999999996, 0])cylinder(d=3.85,h=11.047999999999998,$fn=64);
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

            translate([0, 0, -0.002])translate([1.5, 2.3, 0])translate([21.325000000000003, 36.37499999999999, 0])union(){
                    translate([0, 0, -0.002])translate([0, -34.449999999999996, 0])union(){
                          translate([0, 0, -0.002])Path();
                          translate([0, 14.049999999999999, 0])hull(){
                              translate([0, 0, -0.1])cylinder(d=31.95,h=11.207999999999998,$fn=128);
                              translate([0, 0, -0.1])translate([61.2, 0, 0])cylinder(d=31.95,h=11.407999999999998,$fn=128);
                            }

                        }

                    translate([0, 0, -0.004])hull(){
                        translate([0, -1.925, 0])translate([0, 0, -0.004])cube([10, 3.85, 10.015999999999998]);
                        translate([0, -0.9750000000000001, 0])translate([0, 0, -0.004])translate([5, 0, 0])cube([10, 1.9500000000000002, 10.015999999999998]);
                      }

                    translate([0, -0.9750000000000001, 0])translate([0, 0, -0.004])color("blue")cube([101, 1.9500000000000002, 10.015999999999998]);
                    translate([0, 0, -0.004])translate([37, 0, 0])hull(){
                          translate([0, 0, 0])translate([0, 0, -0.004])translate([1, 9.625, 0])cube([6, 0.001, 10.015999999999998]);
                          translate([0, 0, 0])translate([0, 0, -0.004])translate([-3, 0, 0])cube([3, 0.001, 10.015999999999998]);
                        }

                    translate([0, 0, 0])translate([0, 0, -0.1])translate([45, 0, 0])cube([20, 11.55, 11.207999999999998]);
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
    translate([0, 0, 1])color("OrangeRed")union(){
          translate([0, 0, 0])translate([0, 0, -0.1])translate([2, 0, 0])cube([5.5, 2.05, 12.799999999999999]);
          translate([0, 0, 0])translate([0, 0, -0.1])translate([93.5, 0, 0])cube([5.5, 2.05, 12.999999999999998]);
        }

  }
}
$fn=64;
SmdDispenser();
