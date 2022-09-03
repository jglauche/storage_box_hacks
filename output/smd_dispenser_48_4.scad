module Path(){
  translate([0, 0, -0.002])union(){
      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])cylinder(d=4.9,h=49.008,$fn=64);
          translate([-13.2, 0, -0.002])cylinder(d=4.9,h=49.008,$fn=64);
        }

      translate([-13.2, 0, -0.002])linear_extrude(height=49.004)translate([0, 6.2, 0])rotate([0, 0, 180])intersection(){
                difference(){
                  circle(d=17.3,$fn=70);
                  circle(d=7.5,$fn=64);
                }

                polygon(points=[[0, 0], [0, 0.173e2], [0.173e2, 0.1059319481262460518e-14]],convexity=10);
              }

      translate([0, 0, -0.002])hull(){
          translate([-19.4, 6.199999999999998, -0.002])cylinder(d=4.9,h=49.008,$fn=64);
          translate([-19.4, 27.2, -0.002])cylinder(d=4.9,h=49.008,$fn=64);
        }

      translate([-19.4, 27.2, -0.002])linear_extrude(height=49.004)translate([6.2, 0, 0])rotate([0, 0, 90])intersection(){
                difference(){
                  circle(d=17.3,$fn=70);
                  circle(d=7.5,$fn=64);
                }

                polygon(points=[[0, 0], [0, 0.173e2], [0.173e2, 0.1059319481262460518e-14]],convexity=10);
              }

      translate([0, 0, -0.002])hull(){
          translate([-13.200000000000001, 33.4, -0.002])cylinder(d=4.9,h=49.008,$fn=64);
          translate([-7.592810154713589e-16, 33.4, -0.002])cylinder(d=4.9,h=49.008,$fn=64);
        }

    }
}
module GridSegment_extra_w_1_0_extra_len_2_h_1_5_w_2_08_repeat_x_2_repeat_y_1_lid_extra_w_1_0_lid_extra_h_0_4_no_bottom_true(){
  translate([25.85, 25.85, 0])union(){
      translate([0, 0, 45])%linear_extrude(height=1)union(){
            translate([-25.85, -25.85, 0])square([51.7, 51.7]);
            translate([-25.85, -25.85, 0])square([51.7, 51.7]);
            translate([27.85, -25.85, 0])square([51.7, 51.7]);
          }

      translate([0, 0, 41.5])color("blue")linear_extrude(height=3.5)union(){
              translate([-21.6, 22.95, 0])square([43.2, 2.2]);
              translate([-21.6, -25.15, 0])square([43.2, 2.2]);
              translate([22.95, -21.6, 0])square([2.2, 43.2]);
              translate([-25.15, -21.6, 0])square([2.2, 43.2]);
              union(){
                translate([-21.6, 22.95, 0])square([43.2, 2.2]);
                translate([-21.6, -25.15, 0])square([43.2, 2.2]);
                translate([22.95, -21.6, 0])square([2.2, 43.2]);
                translate([-25.15, -21.6, 0])square([2.2, 43.2]);
              }

              translate([53.7, 0, 0])union(){
                  translate([-21.6, 22.95, 0])square([43.2, 2.2]);
                  translate([-21.6, -25.15, 0])square([43.2, 2.2]);
                  translate([22.95, -21.6, 0])square([2.2, 43.2]);
                  translate([-25.15, -21.6, 0])square([2.2, 43.2]);
                }

            }

    }
}
module SmdDispenser_strip_h_48_strip_w_4_0(){
  difference(){
    color("pink")union(){
        translate([0, 0, 1.6])difference(){
            union()linear_extrude(height=48)translate([2.5, 2.5, 0])hull(){
                    circle(d=5,$fn=64);
                    translate([96, 0, 0])circle(d=5,$fn=64);
                    translate([0, 38.1, 0])circle(d=5,$fn=64);
                    translate([96, 38.1, 0])circle(d=5,$fn=64);
                  }

            translate([23.35, 38.15, -0.002])union(){
                translate([7.592810154713589e-16, -33.4, -0.002])union(){
                    translate([0, 0, -0.002])Path();
                    translate([0, 13, 0])hull(){
                        translate([0, 0, -0.1])cylinder(d=30.9,h=49.208,$fn=124);
                        translate([61.2, 0, -0.1])cylinder(d=30.9,h=49.408,$fn=124);
                      }

                  }

                translate([0, 0, -0.004])hull(){
                    translate([0, -2.45, -0.004])cube([10, 4.9, 48.016]);
                    translate([5, -2.2, -0.004])cube([10, 4.4, 48.016]);
                  }

                translate([0, -2.2, -0.004])color("blue")cube([101, 4.4, 48.016]);
                translate([29.75, 0, -0.004])linear_extrude(height=48.008)hull(){
                      translate([7, 12.25, 0])square([18, 0.001]);
                      translate([-9, 0, 0])square([9, 0.001]);
                    }

                translate([43.75, 0, -0.1])cube([20, 14.7, 49.208]);
              }

          }

        union()linear_extrude(height=1.6)translate([2.5, 2.5, 0])hull(){
                circle(d=5,$fn=64);
                translate([96, 0, 0])circle(d=5,$fn=64);
                translate([0, 38.1, 0])circle(d=5,$fn=64);
                translate([96, 38.1, 0])circle(d=5,$fn=64);
              }

      }

    translate([-0.1, 42.75, -0.1])color("silver")cube([45.2, 0.5, 50.8]);
    translate([0, 0, 1])color("SteelBlue")union(){
          translate([2, 0, -0.1])cube([5.5, 2.05, 50.8]);
          translate([93.5, 0, -0.1])cube([5.5, 2.05, 51]);
        }

    translate([0, 0, -5])mirror([])rotate([90, 0, 0])translate([-2.40000000000001, 0, -1.5])GridSegment_extra_w_1_0_extra_len_2_h_1_5_w_2_08_repeat_x_2_repeat_y_1_lid_extra_w_1_0_lid_extra_h_0_4_no_bottom_true();
    translate([47.5, 40.1, -0.002])color("purple")cube([6, 6, 49.608]);
  }
}
$fn=64;
SmdDispenser_strip_h_48_strip_w_4_0();
