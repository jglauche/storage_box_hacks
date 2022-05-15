module Path(){
  translate([0, 0, -0.002])union(){
      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])cylinder(d=4.9,h=17.008,$fn=64);
          translate([-13.2, 0, -0.002])cylinder(d=4.9,h=17.008,$fn=64);
        }

      translate([-13.2, 0, -0.002])linear_extrude(height=17)translate([0, 6.2, 0])rotate([0, 0, 180])intersection(){
                difference(){
                  circle(d=17.3,$fn=70);
                  circle(d=7.5,$fn=64);
                }

                polygon(points=[[0, 0], [0, 0.173e2], [0.173e2, 0.1059319481262460518e-14]],convexity=10);
              }

      translate([0, 0, -0.002])hull(){
          translate([-19.4, 6.199999999999998, -0.002])cylinder(d=4.9,h=17.008,$fn=64);
          translate([-19.4, 27.2, -0.002])cylinder(d=4.9,h=17.008,$fn=64);
        }

      translate([-19.4, 27.2, -0.002])linear_extrude(height=17)translate([6.2, 0, 0])rotate([0, 0, 90])intersection(){
                difference(){
                  circle(d=17.3,$fn=70);
                  circle(d=7.5,$fn=64);
                }

                polygon(points=[[0, 0], [0, 0.173e2], [0.173e2, 0.1059319481262460518e-14]],convexity=10);
              }

      translate([0, 0, -0.002])hull(){
          translate([-13.200000000000001, 33.4, -0.002])cylinder(d=4.9,h=17.008,$fn=64);
          translate([-7.592810154713589e-16, 33.4, -0.002])cylinder(d=4.9,h=17.008,$fn=64);
        }

    }
}
module SmdDispenser_strip_h_16_strip_w_4_0(){
  difference(){
    color("pink")union(){
        translate([0, 0, 1.6])difference(){
            union()linear_extrude(height=16)translate([2.5, 2.5, 0])hull(){
                    circle(d=5,$fn=64);
                    translate([96, 0, 0])circle(d=5,$fn=64);
                    translate([0, 38.1, 0])circle(d=5,$fn=64);
                    translate([96, 38.1, 0])circle(d=5,$fn=64);
                  }

            translate([23.35, 38.15, -0.002])union(){
                translate([7.592810154713589e-16, -33.4, -0.002])union(){
                    translate([0, 0, -0.002])Path();
                    translate([0, 13, 0])hull(){
                        translate([0, 0, -0.1])cylinder(d=30.9,h=17.208,$fn=124);
                        translate([61.19999999999999, 0, -0.1])cylinder(d=30.9,h=17.408,$fn=124);
                      }

                  }

                translate([0, 0, -0.004])hull(){
                    translate([0, -2.45, -0.004])cube([10, 4.9, 16.016]);
                    translate([5, -2.2, -0.004])cube([10, 4.4, 16.016]);
                  }

                translate([0, -2.2, -0.004])color("blue")cube([101, 4.4, 16.016]);
                translate([37, 0, -0.004])hull(){
                    translate([1, 12.25, -0.004])cube([6, 0.001, 16.016]);
                    translate([-3, 0, -0.004])cube([3, 0.001, 16.016]);
                  }

                translate([45, 0, -0.1])cube([20, 14.7, 17.208]);
              }

          }

        union()linear_extrude(height=1.6)translate([2.5, 2.5, 0])hull(){
                circle(d=5,$fn=64);
                translate([96, 0, 0])circle(d=5,$fn=64);
                translate([0, 38.1, 0])circle(d=5,$fn=64);
                translate([96, 38.1, 0])circle(d=5,$fn=64);
              }

      }

    translate([-0.1, 42.75, -0.1])color("silver")cube([50.2, 0.5, 18.8]);
    translate([0, 0, 1])color("HotPink")union(){
          translate([2, 0, -0.1])cube([5.5, 2.05, 18.8]);
          translate([93.5, 0, -0.1])cube([5.5, 2.05, 19]);
        }

  }
}
$fn=64;
SmdDispenser_strip_h_16_strip_w_4_0();
