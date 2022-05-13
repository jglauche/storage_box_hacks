module Path(){
  translate([0, 0, -0.002])union(){
      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])cylinder(d=6.9,h=17.008,$fn=64);
          translate([-12.2, 0, -0.002])cylinder(d=6.9,h=17.008,$fn=64);
        }

      translate([-12.2, 0, -0.002])linear_extrude(height=17)translate([0, 7.2, 0])rotate([0, 0, 180])intersection(){
                difference(){
                  circle(d=21.3);
                  circle(d=7.5);
                }

                translate([0, 0, -0.1])polygon(points=[[0, 0], [0, 0.213e2], [0.213e2, 0.1304248841091931158e-14]]);
              }

      translate([0, 0, -0.002])hull(){
          translate([-19.4, 7.1999999999999975, -0.002])cylinder(d=6.9,h=17.008,$fn=64);
          translate([-19.4, 24.2, -0.002])cylinder(d=6.9,h=17.008,$fn=64);
        }

      translate([-19.4, 24.2, -0.002])linear_extrude(height=17)translate([7.2, 0, 0])rotate([0, 0, 90])intersection(){
                difference(){
                  circle(d=21.3);
                  circle(d=7.5);
                }

                translate([0, 0, -0.1])polygon(points=[[0, 0], [0, 0.213e2], [0.213e2, 0.1304248841091931158e-14]]);
              }

      translate([0, 0, -0.002])hull(){
          translate([-12.200000000000001, 31.4, -0.002])cylinder(d=6.9,h=17.008,$fn=64);
          translate([-8.817456953860941e-16, 31.4, -0.002])cylinder(d=6.9,h=17.008,$fn=64);
        }

    }
}
module SmdDispenser(){
  difference(){
    color("pink")union(){
        translate([0, 0, 1.6])difference(){
            union()translate([2.5, 2.5, 0])hull(){
                  cylinder(d=5,h=16,$fn=64);
                  translate([96, 0, 0])cylinder(d=5,h=16,$fn=64);
                  translate([0, 38.1, 0])cylinder(d=5,h=16,$fn=64);
                  translate([96, 38.1, 0])cylinder(d=5,h=16,$fn=64);
                }

            translate([24.35, 37.15, -0.002])union(){
                translate([8.817456953860941e-16, -31.4, -0.002])union(){
                    translate([0, 0, -0.002])Path();
                    translate([0, 11, 0])hull(){
                        translate([0, 0, -0.1])cylinder(d=28.9,h=17.208,$fn=116);
                        translate([61.19999999999999, 0, -0.1])cylinder(d=28.9,h=17.408,$fn=116);
                      }

                  }

                translate([0, 0, -0.004])hull(){
                    translate([0, -3.45, -0.004])cube([10, 6.9, 16.016]);
                    translate([5, -3.2, -0.004])cube([10, 6.4, 16.016]);
                  }

                translate([0, -3.2, -0.004])color("blue")cube([101, 6.4, 16.016]);
                translate([37, 0, -0.004])hull(){
                    translate([1, 17.25, -0.004])cube([6, 0.001, 16.016]);
                    translate([-3, 0, -0.004])cube([3, 0.001, 16.016]);
                  }

                translate([45, 0, -0.1])cube([20, 20.7, 17.208]);
              }

          }

        union()translate([2.5, 2.5, 0])hull(){
              cylinder(d=5,h=1.6,$fn=64);
              translate([96, 0, 0])cylinder(d=5,h=1.6,$fn=64);
              translate([0, 38.1, 0])cylinder(d=5,h=1.6,$fn=64);
              translate([96, 38.1, 0])cylinder(d=5,h=1.6,$fn=64);
            }

      }

    translate([-0.1, 42.75, -0.1])color("silver")cube([50.2, 0.5, 18.8]);
    translate([0, 0, 1])color("DarkOrchid")union(){
          translate([2, 0, -0.1])cube([5.5, 2.05, 18.8]);
          translate([93.5, 0, -0.1])cube([5.5, 2.05, 19]);
        }

  }
}
$fn=64;
SmdDispenser();
