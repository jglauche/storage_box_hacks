module ContainerBaseCalibration(){
  difference(){
    translate([79.55000000000001, 25.85, 0])color("red")difference(){
          translate([-80.05000000000001, -26.35, 0])union()linear_extrude(height=1.5)translate([2.5, 2.5, 0])hull(){
                    circle(d=5,$fn=64);
                    translate([155.1, 0, 0])circle(d=5,$fn=64);
                    translate([0, 47.7, 0])circle(d=5,$fn=64);
                    translate([155.1, 47.7, 0])circle(d=5,$fn=64);
                  }

          translate([-25, -25, 1.996])union()linear_extrude(height=1.508)translate([2.5, 2.5, 0])hull(){
                    circle(d=5,$fn=64);
                    translate([45, 0, 0])circle(d=5,$fn=64);
                    translate([0, 45, 0])circle(d=5,$fn=64);
                    translate([45, 45, 0])circle(d=5,$fn=64);
                  }

          translate([-66.05000000000001, -12.350000000000001, 0])union()translate([2.5, 2.5, 0])hull(){
                  circle(d=5,$fn=64);
                  translate([127.1, 0, 0])circle(d=5,$fn=64);
                  translate([0, 19.7, 0])circle(d=5,$fn=64);
                  translate([127.1, 19.7, 0])circle(d=5,$fn=64);
                }

        }

    translate([25.85, 25.85, 0])union(){
        translate([0, 0, -1])%linear_extrude(height=1)union(){
              translate([-25.85, -25.85, 0])square([51.7, 51.7]);
              translate([-25.85, -25.85, 0])square([51.7, 51.7]);
              translate([27.85, -25.85, 0])square([51.7, 51.7]);
              translate([81.55, -25.85, 0])square([51.7, 51.7]);
            }

        translate([0, 0, 45])%linear_extrude(height=1)union(){
              translate([-25.85, -25.85, 0])square([51.7, 51.7]);
              translate([-25.85, -25.85, 0])square([51.7, 51.7]);
              translate([27.85, -25.85, 0])square([51.7, 51.7]);
              translate([81.55, -25.85, 0])square([51.7, 51.7]);
            }

        translate([0, 0, -0.004])color("red")linear_extrude(height=1.508)union(){
                difference(){
                  translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                          circle(d=5,$fn=64);
                          translate([43.7, 0, 0])circle(d=5,$fn=64);
                          translate([0, 43.7, 0])circle(d=5,$fn=64);
                          translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                        }

                  translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                          circle(d=5,$fn=64);
                          translate([40.65, 0, 0])circle(d=5,$fn=64);
                          translate([0, 40.65, 0])circle(d=5,$fn=64);
                          translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                        }

                  translate([-15.350000000000001, -25.85, 0])square([30.700000000000003, 51.7]);
                  translate([-25.85, -15.350000000000001, 0])square([51.7, 30.700000000000003]);
                }

                difference(){
                  translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                          circle(d=5,$fn=64);
                          translate([43.7, 0, 0])circle(d=5,$fn=64);
                          translate([0, 43.7, 0])circle(d=5,$fn=64);
                          translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                        }

                  translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                          circle(d=5,$fn=64);
                          translate([40.65, 0, 0])circle(d=5,$fn=64);
                          translate([0, 40.65, 0])circle(d=5,$fn=64);
                          translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                        }

                  translate([-15.350000000000001, -25.85, 0])square([30.700000000000003, 51.7]);
                  translate([-25.85, -15.350000000000001, 0])square([51.7, 30.700000000000003]);
                }

                translate([53.7, 0, 0])difference(){
                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                            circle(d=5,$fn=64);
                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                          }

                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                            circle(d=5,$fn=64);
                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                          }

                    translate([-15.350000000000001, -25.85, 0])square([30.700000000000003, 51.7]);
                    translate([-25.85, -15.350000000000001, 0])square([51.7, 30.700000000000003]);
                  }

                translate([107.4, 0, 0])difference(){
                    translate([-24.35, -24.35, 0])union()translate([2.5, 2.5, 0])hull(){
                            circle(d=5,$fn=64);
                            translate([43.7, 0, 0])circle(d=5,$fn=64);
                            translate([0, 43.7, 0])circle(d=5,$fn=64);
                            translate([43.7, 43.7, 0])circle(d=5,$fn=64);
                          }

                    translate([-22.825, -22.825, 0])union()translate([2.5, 2.5, 0])hull(){
                            circle(d=5,$fn=64);
                            translate([40.65, 0, 0])circle(d=5,$fn=64);
                            translate([0, 40.65, 0])circle(d=5,$fn=64);
                            translate([40.65, 40.65, 0])circle(d=5,$fn=64);
                          }

                    translate([-15.350000000000001, -25.85, 0])square([30.700000000000003, 51.7]);
                    translate([-25.85, -15.350000000000001, 0])square([51.7, 30.700000000000003]);
                  }

              }

        translate([0, 0, 41.5])color("blue")linear_extrude(height=3.5)union(){
                translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                translate([23.25, -21.6, 0])square([1.6, 43.2]);
                translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                union(){
                  translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                  translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                  translate([23.25, -21.6, 0])square([1.6, 43.2]);
                  translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                }

                translate([53.7, 0, 0])union(){
                    translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                    translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                    translate([23.25, -21.6, 0])square([1.6, 43.2]);
                    translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                  }

                translate([107.4, 0, 0])union(){
                    translate([-21.6, 23.25, 0])square([43.2, 1.6]);
                    translate([-21.6, -24.85, 0])square([43.2, 1.6]);
                    translate([23.25, -21.6, 0])square([1.6, 43.2]);
                    translate([-24.85, -21.6, 0])square([1.6, 43.2]);
                  }

              }

      }

  }
}
$fn=64;
ContainerBaseCalibration();
