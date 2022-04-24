module Path(){
  translate([0, 0, -0.002])union(){
      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])translate([0, 0, 0])cylinder(d=2.9499999999999997,h=13.047999999999998,$fn=64);
          translate([0, 0, -0.002])translate([-14.175000000000004, 0, 0])cylinder(d=2.9499999999999997,h=13.047999999999998,$fn=64);
        }

      translate([0, 0, -0.002])translate([-14.175000000000004, 0, 0])linear_extrude(height=13)translate([0, 5.225, 0])rotate([0, 0, 180])intersection(){
                  difference(){
                    circle(d=13.399999999999999);
                    circle(d=7.5);
                  }

                  translate([0, 0, -0.1])polygon(points=[[0, 0], [0, 13.399999999999999], [13.399999999999999, 8.205133554287266e-16]]);
                }

      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])translate([-19.400000000000006, 5.224999999999998, 0])cylinder(d=2.9499999999999997,h=13.047999999999998,$fn=64);
          translate([0, 0, -0.002])translate([-19.400000000000006, 30.125000000000007, 0])cylinder(d=2.9499999999999997,h=13.047999999999998,$fn=64);
        }

      translate([0, 0, -0.002])translate([-19.400000000000006, 30.125000000000007, 0])linear_extrude(height=13)translate([5.225, 0, 0])rotate([0, 0, 90])intersection(){
                  difference(){
                    circle(d=13.399999999999999);
                    circle(d=7.5);
                  }

                  translate([0, 0, -0.1])polygon(points=[[0, 0], [0, 13.399999999999999], [13.399999999999999, 8.205133554287266e-16]]);
                }

      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])translate([-14.175000000000008, 35.35000000000001, 0])cylinder(d=2.9499999999999997,h=13.047999999999998,$fn=64);
          translate([0, 0, -0.002])translate([-3.552713678800501e-15, 35.35000000000001, 0])cylinder(d=2.9499999999999997,h=13.047999999999998,$fn=64);
        }

    }
}
module SmdDispenser(){
  difference(){
    color("pink")union(){
        translate([0, 0, 1.6])difference(){
            translate([0, 0, 0])union()translate([2.5, 2.5, 0])hull(){
                    cylinder(d=5,h=12,$fn=64);
                    translate([96, 0, 0])cylinder(d=5,h=12,$fn=64);
                    translate([0, 38.1, 0])cylinder(d=5,h=12,$fn=64);
                    translate([96, 38.1, 0])cylinder(d=5,h=12,$fn=64);
                  }

            translate([0, 0, -0.002])translate([1.5, 2.3, 0])translate([20.875000000000004, 36.82500000000001, 0])union(){
                    translate([0, 0, -0.002])translate([3.552713678800501e-15, -35.35000000000001, 0])union(){
                          translate([0, 0, -0.002])Path();
                          translate([0, 14.950000000000005, 0])hull(){
                              translate([0, 0, -0.1])cylinder(d=32.85000000000001,h=13.207999999999998,$fn=132);
                              translate([0, 0, -0.1])translate([61.19999999999999, 0, 0])cylinder(d=32.85000000000001,h=13.407999999999998,$fn=132);
                            }

                        }

                    translate([0, 0, -0.004])hull(){
                        translate([0, -1.4749999999999999, 0])translate([0, 0, -0.004])cube([10, 2.9499999999999997, 12.015999999999998]);
                        translate([0, -1.2249999999999999, 0])translate([0, 0, -0.004])translate([5, 0, 0])cube([10, 2.4499999999999997, 12.015999999999998]);
                      }

                    translate([0, -1.2249999999999999, 0])translate([0, 0, -0.004])color("blue")cube([101, 2.4499999999999997, 12.015999999999998]);
                    translate([0, 0, -0.004])translate([37, 0, 0])hull(){
                          translate([0, 0, 0])translate([0, 0, -0.004])translate([1, 7.374999999999999, 0])cube([6, 0.001, 12.015999999999998]);
                          translate([0, 0, 0])translate([0, 0, -0.004])translate([-3, 0, 0])cube([3, 0.001, 12.015999999999998]);
                        }

                    translate([0, 0, 0])translate([0, 0, -0.1])translate([45, 0, 0])cube([20, 8.85, 13.207999999999998]);
                  }

          }

        translate([0, 0, 0])union()translate([2.5, 2.5, 0])hull(){
                cylinder(d=5,h=1.6,$fn=64);
                translate([96, 0, 0])cylinder(d=5,h=1.6,$fn=64);
                translate([0, 38.1, 0])cylinder(d=5,h=1.6,$fn=64);
                translate([96, 38.1, 0])cylinder(d=5,h=1.6,$fn=64);
              }

      }

    translate([-25.1, -0.25, 0])translate([0, 0, -0.1])translate([25, 43, 0])color("silver")cube([50.2, 0.5, 14.799999999999999]);
    translate([0, 0, 1])color("LightCoral")union(){
          translate([0, 0, 0])translate([0, 0, -0.1])translate([2, 0, 0])cube([5.5, 2.05, 14.799999999999999]);
          translate([0, 0, 0])translate([0, 0, -0.1])translate([93.5, 0, 0])cube([5.5, 2.05, 14.999999999999998]);
        }

  }
}
$fn=64;
SmdDispenser();
