module GridSegment(){
  translate([25.85, 25.85, 0])union(){
      translate([0, 0, -1])%linear_extrude(height=1)union(){
            translate([-25.85, -25.85, 0])square([51.7, 51.7]);
            translate([-25.85, -25.85, 0])square([51.7, 51.7]);
          }

      translate([0, 0, 45])%linear_extrude(height=1)union(){
            translate([-25.85, -25.85, 0])square([51.7, 51.7]);
            translate([-25.85, -25.85, 0])square([51.7, 51.7]);
          }

      color("red")linear_extrude(height=1)union(){
            difference(){
              translate([-24.1, -24.1, 0])union()translate([2.5, 2.5, 0])hull(){
                      circle(d=5,$fn=64);
                      translate([43.2, 0, 0])circle(d=5,$fn=64);
                      translate([0, 43.2, 0])circle(d=5,$fn=64);
                      translate([43.2, 43.2, 0])circle(d=5,$fn=64);
                    }

              translate([-23.075, -23.075, 0])union()translate([2.5, 2.5, 0])hull(){
                      circle(d=5,$fn=64);
                      translate([41.15, 0, 0])circle(d=5,$fn=64);
                      translate([0, 41.15, 0])circle(d=5,$fn=64);
                      translate([41.15, 41.15, 0])circle(d=5,$fn=64);
                    }

              translate([-17.1, -25.85, 0])square([34.2, 51.7]);
              translate([-25.85, -17.1, 0])square([51.7, 34.2]);
            }

            difference(){
              translate([-24.1, -24.1, 0])union()translate([2.5, 2.5, 0])hull(){
                      circle(d=5,$fn=64);
                      translate([43.2, 0, 0])circle(d=5,$fn=64);
                      translate([0, 43.2, 0])circle(d=5,$fn=64);
                      translate([43.2, 43.2, 0])circle(d=5,$fn=64);
                    }

              translate([-23.075, -23.075, 0])union()translate([2.5, 2.5, 0])hull(){
                      circle(d=5,$fn=64);
                      translate([41.15, 0, 0])circle(d=5,$fn=64);
                      translate([0, 41.15, 0])circle(d=5,$fn=64);
                      translate([41.15, 41.15, 0])circle(d=5,$fn=64);
                    }

              translate([-17.1, -25.85, 0])square([34.2, 51.7]);
              translate([-25.85, -17.1, 0])square([51.7, 34.2]);
            }

          }

      translate([0, 0, 41.9])color("blue")linear_extrude(height=3.1)union(){
              translate([-21.6, 23.45, 0])square([43.2, 1.2]);
              translate([-21.6, -24.65, 0])square([43.2, 1.2]);
              translate([23.45, -21.6, 0])square([1.2, 43.2]);
              translate([-24.65, -21.6, 0])square([1.2, 43.2]);
              union(){
                translate([-21.6, 23.45, 0])square([43.2, 1.2]);
                translate([-21.6, -24.65, 0])square([43.2, 1.2]);
                translate([23.45, -21.6, 0])square([1.2, 43.2]);
                translate([-24.65, -21.6, 0])square([1.2, 43.2]);
              }

            }

    }
}
$fn=64;
GridSegment();
