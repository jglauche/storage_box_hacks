module Path(){
  translate([0, 0, -0.002])union(){
      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])cylinder(d=2.9,h=11.008,$fn=64);
          translate([-14.2, 0, -0.002])cylinder(d=2.9,h=11.008,$fn=64);
        }

      translate([-14.2, 0, -0.002])linear_extrude(height=11)translate([0, 5.2, 0])rotate([0, 0, 180])intersection(){
                difference(){
                  circle(d=13.3);
                  circle(d=7.5);
                }

                translate([0, 0, -0.1])polygon(points=[[0, 0], [0, 0.133e2], [0.133e2, 0.814390121432989878e-15]]);
              }

      translate([0, 0, -0.002])hull(){
          translate([-19.4, 5.199999999999998, -0.002])cylinder(d=2.9,h=11.008,$fn=64);
          translate([-19.4, 30.20000000000001, -0.002])cylinder(d=2.9,h=11.008,$fn=64);
        }

      translate([-19.4, 30.20000000000001, -0.002])linear_extrude(height=11)translate([5.2, 0, 0])rotate([0, 0, 90])intersection(){
                difference(){
                  circle(d=13.3);
                  circle(d=7.5);
                }

                translate([0, 0, -0.1])polygon(points=[[0, 0], [0, 0.133e2], [0.133e2, 0.814390121432989878e-15]]);
              }

      translate([0, 0, -0.002])hull(){
          translate([-14.200000000000001, 35.400000000000006, -0.002])cylinder(d=2.9,h=11.008,$fn=64);
          translate([-6.368163355566235e-16, 35.400000000000006, -0.002])cylinder(d=2.9,h=11.008,$fn=64);
        }

    }
}
module SmdDispenser(){
  difference(){
    color("pink")union(){
        translate([0, 0, 1.6])difference(){
            union()translate([2.5, 2.5, 0])hull(){
                  cylinder(d=5,h=10,$fn=64);
                  translate([96, 0, 0])cylinder(d=5,h=10,$fn=64);
                  translate([0, 38.1, 0])cylinder(d=5,h=10,$fn=64);
                  translate([96, 38.1, 0])cylinder(d=5,h=10,$fn=64);
                }

            translate([22.35, 39.150000000000006, -0.002])union(){
                translate([6.368163355566235e-16, -35.400000000000006, -0.002])union(){
                    translate([0, 0, -0.002])Path();
                    translate([0, 15.000000000000004, 0])hull(){
                        translate([0, 0, -0.1])cylinder(d=32.9,h=11.208,$fn=132);
                        translate([61.19999999999999, 0, -0.1])cylinder(d=32.9,h=11.408,$fn=132);
                      }

                  }

                translate([0, 0, -0.004])hull(){
                    translate([0, -1.45, -0.004])cube([10, 2.9, 10.016]);
                    translate([5, -0.5, -0.004])cube([10, 1, 10.016]);
                  }

                translate([0, -0.5, -0.004])color("blue")cube([101, 1, 10.016]);
                translate([37, 0, -0.004])hull(){
                    translate([1, 7.25, -0.004])cube([6, 0.001, 10.016]);
                    translate([-3, 0, -0.004])cube([3, 0.001, 10.016]);
                  }

                translate([45, 0, -0.1])cube([20, 8.7, 11.208]);
              }

          }

        union()translate([2.5, 2.5, 0])hull(){
              cylinder(d=5,h=1.6,$fn=64);
              translate([96, 0, 0])cylinder(d=5,h=1.6,$fn=64);
              translate([0, 38.1, 0])cylinder(d=5,h=1.6,$fn=64);
              translate([96, 38.1, 0])cylinder(d=5,h=1.6,$fn=64);
            }

      }

    translate([-0.1, 42.75, -0.1])color("silver")cube([50.2, 0.5, 12.8]);
    translate([0, 0, 1])color("LightCoral")union(){
          translate([2, 0, -0.1])cube([5.5, 2.05, 12.8]);
          translate([93.5, 0, -0.1])cube([5.5, 2.05, 13]);
        }

  }
}
$fn=64;
SmdDispenser();
