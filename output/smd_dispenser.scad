module Path(){
  translate([0, 0, -0.002])union(){
      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])cylinder(d=2.9,h=11.008,$fn=64);
          translate([-14.2, 0, -0.002])cylinder(d=2.9,h=11.008,$fn=64);
        }

      translate([-14.2, 0, -0.002])linear_extrude(height=11.004)translate([0, 5.2, 0])rotate([0, 0, 180])intersection(){
                difference(){
                  circle(d=13.3,$fn=64);
                  circle(d=7.5,$fn=64);
                }

                polygon(points=[[0, 0], [0, 0.133e2], [0.133e2, 0.814390121432989878e-15]],convexity=10);
              }

      translate([0, 0, -0.002])hull(){
          translate([-19.4, 5.199999999999998, -0.002])cylinder(d=2.9,h=11.008,$fn=64);
          translate([-19.4, 30.20000000000001, -0.002])cylinder(d=2.9,h=11.008,$fn=64);
        }

      translate([-19.4, 30.20000000000001, -0.002])linear_extrude(height=11.004)translate([5.2, 0, 0])rotate([0, 0, 90])intersection(){
                difference(){
                  circle(d=13.3,$fn=64);
                  circle(d=7.5,$fn=64);
                }

                polygon(points=[[0, 0], [0, 0.133e2], [0.133e2, 0.814390121432989878e-15]],convexity=10);
              }

      translate([0, 0, -0.002])hull(){
          translate([-14.200000000000001, 35.400000000000006, -0.002])cylinder(d=2.9,h=11.008,$fn=64);
          translate([-6.368163355566235e-16, 35.400000000000006, -0.002])cylinder(d=2.9,h=11.008,$fn=64);
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
module SmdDispenser_strip_w_0_6(){
  difference(){
    color("pink")union(){
        translate([0, 0, 1.6])difference(){
            union()linear_extrude(height=10)translate([2.5, 2.5, 0])hull(){
                    circle(d=5,$fn=64);
                    translate([96, 0, 0])circle(d=5,$fn=64);
                    translate([0, 38.1, 0])circle(d=5,$fn=64);
                    translate([96, 38.1, 0])circle(d=5,$fn=64);
                  }

            translate([22.35, 39.150000000000006, -0.002])union(){
                translate([6.368163355566235e-16, -35.400000000000006, -0.002])union(){
                    translate([0, 0, -0.002])Path();
                    translate([0, 15, 0])hull(){
                        translate([0, 0, -0.1])cylinder(d=32.9,h=11.208,$fn=132);
                        translate([61.2, 0, -0.1])cylinder(d=32.9,h=11.408,$fn=132);
                      }

                  }

                translate([0, 0, -0.004])hull(){
                    translate([0, -1.45, -0.004])cube([10, 2.9, 10.016]);
                    translate([5, -0.5, -0.004])cube([10, 1, 10.016]);
                  }

                translate([0, -0.5, -0.004])color("blue")cube([101, 1, 10.016]);
                translate([29.75, 0, -0.004])linear_extrude(height=10.008)hull(){
                      translate([7, 7.25, 0])square([18, 0.001]);
                      translate([-9, 0, 0])square([9, 0.001]);
                    }

                translate([43.75, 0, -0.1])cube([20, 8.7, 11.208]);
              }

          }

        union()linear_extrude(height=1.6)translate([2.5, 2.5, 0])hull(){
                circle(d=5,$fn=64);
                translate([96, 0, 0])circle(d=5,$fn=64);
                translate([0, 38.1, 0])circle(d=5,$fn=64);
                translate([96, 38.1, 0])circle(d=5,$fn=64);
              }

      }

    translate([-0.1, 42.75, -0.1])color("silver")cube([45.2, 0.5, 12.8]);
    translate([0, 0, 1])color("HotPink")union(){
          translate([2, 0, -0.1])cube([5.5, 2.05, 12.8]);
          translate([93.5, 0, -0.1])cube([5.5, 2.05, 13]);
        }

    translate([0, 0, -5])mirror([])rotate([90, 0, 0])translate([-2.40000000000001, 0, -1.5])GridSegment_extra_w_1_0_extra_len_2_h_1_5_w_2_08_repeat_x_2_repeat_y_1_lid_extra_w_1_0_lid_extra_h_0_4_no_bottom_true();
    translate([47.5, 40.1, -0.002])color("purple")cube([6, 6, 11.608]);
  }
}
$fn=64;
SmdDispenser_strip_w_0_6();
