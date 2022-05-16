module Path(){
  translate([0, 0, -0.002])union(){
      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])cylinder(d=2.95,h=13.008,$fn=64);
          translate([-14.175, 0, -0.002])cylinder(d=2.95,h=13.008,$fn=64);
        }

      translate([-14.175, 0, -0.002])linear_extrude(height=13)translate([0, 5.225, 0])rotate([0, 0, 180])intersection(){
                difference(){
                  circle(d=13.4,$fn=64);
                  circle(d=7.5,$fn=64);
                }

                polygon(points=[[0, 0], [0, 0.134e2], [0.134e2, 0.820513355428726644e-15]],convexity=10);
              }

      translate([0, 0, -0.002])hull(){
          translate([-19.4, 5.224999999999999, -0.002])cylinder(d=2.95,h=13.008,$fn=64);
          translate([-19.4, 30.125000000000007, -0.002])cylinder(d=2.95,h=13.008,$fn=64);
        }

      translate([-19.4, 30.125000000000007, -0.002])linear_extrude(height=13)translate([5.225, 0, 0])rotate([0, 0, 90])intersection(){
                difference(){
                  circle(d=13.4,$fn=64);
                  circle(d=7.5,$fn=64);
                }

                polygon(points=[[0, 0], [0, 0.134e2], [0.134e2, 0.820513355428726644e-15]],convexity=10);
              }

      translate([0, 0, -0.002])hull(){
          translate([-14.175, 35.35000000000001, -0.002])cylinder(d=2.95,h=13.008,$fn=64);
          translate([-6.39877952554492e-16, 35.35000000000001, -0.002])cylinder(d=2.95,h=13.008,$fn=64);
        }

    }
}
module SmdDispenser_strip_h_12_strip_w_2_05(){
  difference(){
    color("pink")union(){
        translate([0, 0, 1.6])difference(){
            union()linear_extrude(height=12)translate([2.5, 2.5, 0])hull(){
                    circle(d=5,$fn=64);
                    translate([96, 0, 0])circle(d=5,$fn=64);
                    translate([0, 38.1, 0])circle(d=5,$fn=64);
                    translate([96, 38.1, 0])circle(d=5,$fn=64);
                  }

            translate([22.375, 39.12500000000001, -0.002])union(){
                translate([6.39877952554492e-16, -35.35000000000001, -0.002])union(){
                    translate([0, 0, -0.002])Path();
                    translate([0, 14.950000000000005, 0])hull(){
                        translate([0, 0, -0.1])cylinder(d=32.85,h=13.208,$fn=132);
                        translate([61.19999999999999, 0, -0.1])cylinder(d=32.85,h=13.408,$fn=132);
                      }

                  }

                translate([0, 0, -0.004])hull(){
                    translate([0, -1.475, -0.004])cube([10, 2.95, 12.016]);
                    translate([5, -1.225, -0.004])cube([10, 2.45, 12.016]);
                  }

                translate([0, -1.225, -0.004])color("blue")cube([101, 2.45, 12.016]);
                translate([37, 0, -0.004])hull(){
                    translate([1, 7.374999999999999, -0.004])cube([6, 0.001, 12.016]);
                    translate([-3, 0, -0.004])cube([3, 0.001, 12.016]);
                  }

                translate([45, 0, -0.1])cube([20, 8.85, 13.208]);
              }

          }

        union()linear_extrude(height=1.6)translate([2.5, 2.5, 0])hull(){
                circle(d=5,$fn=64);
                translate([96, 0, 0])circle(d=5,$fn=64);
                translate([0, 38.1, 0])circle(d=5,$fn=64);
                translate([96, 38.1, 0])circle(d=5,$fn=64);
              }

      }

    translate([-0.1, 42.75, -0.1])color("silver")cube([50.2, 0.5, 14.8]);
    translate([0, 0, 1])color("SteelBlue")union(){
          translate([2, 0, -0.1])cube([5.5, 2.05, 14.8]);
          translate([93.5, 0, -0.1])cube([5.5, 2.05, 15]);
        }

  }
}
$fn=64;
SmdDispenser_strip_h_12_strip_w_2_05();
