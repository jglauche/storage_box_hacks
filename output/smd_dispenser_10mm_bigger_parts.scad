module Path(){
  translate([0, 0, -0.002])union(){
      translate([0, 0, -0.002])hull(){
          translate([0, 0, -0.002])cylinder(d=3.85,h=11.008,$fn=64);
          translate([-13.725, 0, -0.002])cylinder(d=3.85,h=11.008,$fn=64);
        }

      translate([-13.725, 0, -0.002])linear_extrude(height=11)translate([0, 5.675, 0])rotate([0, 0, 180])intersection(){
                difference(){
                  circle(d=15.2,$fn=64);
                  circle(d=7.5,$fn=64);
                }

                polygon(points=[[0, 0], [0, 0.152e2], [0.152e2, 0.930731567351988432e-15]],convexity=10);
              }

      translate([0, 0, -0.002])hull(){
          translate([-19.4, 5.674999999999998, -0.002])cylinder(d=3.85,h=11.008,$fn=64);
          translate([-19.4, 28.775, -0.002])cylinder(d=3.85,h=11.008,$fn=64);
        }

      translate([-19.4, 28.775, -0.002])linear_extrude(height=11)translate([5.675, 0, 0])rotate([0, 0, 90])intersection(){
                difference(){
                  circle(d=15.2,$fn=64);
                  circle(d=7.5,$fn=64);
                }

                polygon(points=[[0, 0], [0, 0.152e2], [0.152e2, 0.930731567351988432e-15]],convexity=10);
              }

      translate([0, 0, -0.002])hull(){
          translate([-13.725000000000001, 34.449999999999996, -0.002])cylinder(d=3.85,h=11.008,$fn=64);
          translate([-6.949870585161229e-16, 34.449999999999996, -0.002])cylinder(d=3.85,h=11.008,$fn=64);
        }

    }
}
module SmdDispenser_strip_w_1_55(){
  difference(){
    color("pink")union(){
        translate([0, 0, 1.6])difference(){
            union()linear_extrude(height=10)translate([2.5, 2.5, 0])hull(){
                    circle(d=5,$fn=64);
                    translate([96, 0, 0])circle(d=5,$fn=64);
                    translate([0, 38.1, 0])circle(d=5,$fn=64);
                    translate([96, 38.1, 0])circle(d=5,$fn=64);
                  }

            translate([22.825, 38.675, -0.002])union(){
                translate([6.949870585161229e-16, -34.449999999999996, -0.002])union(){
                    translate([0, 0, -0.002])Path();
                    translate([0, 14.049999999999999, 0])hull(){
                        translate([0, 0, -0.1])cylinder(d=31.95,h=11.208,$fn=128);
                        translate([61.2, 0, -0.1])cylinder(d=31.95,h=11.408,$fn=128);
                      }

                  }

                translate([0, 0, -0.004])hull(){
                    translate([0, -1.925, -0.004])cube([10, 3.85, 10.016]);
                    translate([5, -0.975, -0.004])cube([10, 1.95, 10.016]);
                  }

                translate([0, -0.975, -0.004])color("blue")cube([101, 1.95, 10.016]);
                translate([37, 0, -0.004])hull(){
                    translate([1, 9.625, -0.004])cube([6, 0.001, 10.016]);
                    translate([-3, 0, -0.004])cube([3, 0.001, 10.016]);
                  }

                translate([45, 0, -0.1])cube([20, 11.55, 11.208]);
              }

          }

        union()linear_extrude(height=1.6)translate([2.5, 2.5, 0])hull(){
                circle(d=5,$fn=64);
                translate([96, 0, 0])circle(d=5,$fn=64);
                translate([0, 38.1, 0])circle(d=5,$fn=64);
                translate([96, 38.1, 0])circle(d=5,$fn=64);
              }

      }

    translate([-0.1, 42.75, -0.1])color("silver")cube([50.2, 0.5, 12.8]);
    translate([0, 0, 1])color("MediumVioletRed")union(){
          translate([2, 0, -0.1])cube([5.5, 2.05, 12.8]);
          translate([93.5, 0, -0.1])cube([5.5, 2.05, 13]);
        }

  }
}
$fn=64;
SmdDispenser_strip_w_1_55();
