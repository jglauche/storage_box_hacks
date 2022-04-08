module SmdStripTop(){
  translate([0, 0, 34])rotate([0, 180, 0])difference(){
        union()hull(){
            translate([-22, 48, 0])cylinder(d=5,h=34,$fn=64);
            translate([22, 48, 0])cylinder(d=5,h=34,$fn=64);
            translate([-22, -48, 0])cylinder(d=5,h=34,$fn=64);
            translate([22, -48, 0])cylinder(d=5,h=34,$fn=64);
          }

        translate([0, 0, -0.002])union()hull(){
              translate([-21.4, 46.75, 0])cylinder(d=5,h=31.008000000000003,$fn=64);
              translate([21.4, 46.75, 0])cylinder(d=5,h=31.008000000000003,$fn=64);
              translate([-21.4, -46.75, 0])cylinder(d=5,h=31.008000000000003,$fn=64);
              translate([21.4, -46.75, 0])cylinder(d=5,h=31.008000000000003,$fn=64);
            }

        translate([-8.6, -8.6, 0])translate([0, 32, 33])rotate([-30, 0, 0])cube([17.2, 17.2, 6.0]);
        translate([0, -10, 28.1])mirror([0, 1, 0])mirror([1, 0, 0])union(){
                translate([0, 0, -0.1])translate([0, 0, -10])translate([0, 14.95, 0])rotate([0, 90, 0])rotate_extrude(angle=180)translate([0, 0, -0.1])translate([10, 0, 0])rotate([0, 0, 90])projection()translate([0, 0, -0.002])rotate([90, 0, 0])union(){
                                        translate([-8.6, -15, 0])translate([0, 0, 6])cube([17.2, 30, 3.0]);
                                        translate([-5.55, -15, 0])translate([0, 0, -0.002])translate([-1.7, 0, 0])translate([3.05, 0, 0])cube([11.1, 30, 6.007999999999999]);
                                      }

                translate([0, 0, -0.002])union(){
                    translate([-8.6, -15, 0])translate([0, 0, 6])cube([17.2, 30, 3.0]);
                    translate([-5.55, -15, 0])translate([0, 0, -0.002])translate([-1.7, 0, 0])translate([3.05, 0, 0])cube([11.1, 30, 6.007999999999999]);
                  }

              }

      }
}
$fn=64;
color("HotPink")SmdStripTop();
