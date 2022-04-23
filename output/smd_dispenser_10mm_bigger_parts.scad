module SmdDispenser(){
  difference(){
    color("pink")union(){
        translate([0, 0, 1.6])difference(){
            translate([0, 0, 0])union()translate([2.5, 2.5, 0])hull(){
                    cylinder(d=5,h=10,$fn=64);
                    translate([96, 0, 0])cylinder(d=5,h=10,$fn=64);
                    translate([0, 38.1, 0])cylinder(d=5,h=10,$fn=64);
                    translate([96, 38.1, 0])cylinder(d=5,h=10,$fn=64);
                  }

            translate([0, 0, -0.004])translate([1.5, 1, 0])translate([1.925, 1.925, 0])union(){
                    translate([0, 0, -0.004])translate([11.925, 0, 0])union(){
                          translate([-9.6625, -1.925, 0])translate([0, 0, -0.004])translate([9.612499999999999, 0, 0])cube([19.325, 3.85, 10.015999999999998]);
                          translate([0, 11.925, 0])intersection(){
                              difference(){
                                translate([0, 0, -0.1])cylinder(d=27.7,h=10.215999999999998,$fn=111);
                                translate([0, 0, -0.1])cylinder(d=20,h=10.415999999999997,$fn=80);
                              }

                              translate([-6.925, -6.925, 0])translate([0, 0, -0.1])translate([-6.925, -6.925, 0])cube([13.85, 13.85, 10.215999999999998]);
                            }

                        }

                    translate([-1.925, 0, 0])translate([0, 0, -0.004])translate([0, -0.1, 0])translate([0, 11.925, 0])cube([3.85, 9.95, 10.015999999999998]);
                    translate([0, 21.675, 0])translate([15.65, 0, 0])rotate([0, 0, -90])intersection(){
                            difference(){
                              translate([0, 0, -0.1])cylinder(d=35.15,h=10.215999999999998,$fn=141);
                              translate([0, 0, -0.1])cylinder(d=27.45,h=10.415999999999997,$fn=110);
                            }

                            translate([-8.7875, -8.7875, 0])translate([0, 0, -0.1])translate([-8.7875, -8.7875, 0])cube([17.575, 17.575, 10.215999999999998]);
                          }

                    translate([0, 0, -0.004])translate([15, 36.475, 0])hull(){
                          translate([0, 0, 0])translate([0, 0, -0.004])translate([0, -1.0750000000000002, 0])cube([10, 3.85, 10.015999999999998]);
                          translate([0, 0, 0])translate([0, 0, -0.004])translate([5, 0, 0])cube([10, 1.9500000000000002, 10.015999999999998]);
                        }

                    translate([0, 0, 0])translate([0, 0, -0.004])translate([15, 36.475, 0])color("blue")cube([101, 1.9500000000000002, 10.015999999999998]);
                    translate([0, 0, -0.004])translate([50, 38.425000000000004, 0])hull(){
                          translate([0, 0, 0])translate([0, 0, -0.004])translate([1, 7.7, 0])cube([6, 1, 10.015999999999998]);
                          translate([0, 0, 0])translate([0, 0, -0.004])translate([-3, 0, 0])cube([3, 0.1, 10.015999999999998]);
                        }

                    translate([0, 0, 0])translate([0, 0, -0.004])translate([58, 36.475, 0])cube([20, 6.625, 10.015999999999998]);
                    translate([3, 0, 0])translate([17.825, 15.899999999999999, 0])hull(){
                          translate([0, 0, -0.1])cylinder(d=35.65,h=10.215999999999998,$fn=143);
                          translate([0, 0, -0.1])translate([58.349999999999994, 0, 0])cylinder(d=35.65,h=10.415999999999997,$fn=143);
                        }

                  }

          }

        translate([0, 0, 0])union()translate([2.5, 2.5, 0])hull(){
                cylinder(d=5,h=1.6,$fn=64);
                translate([96, 0, 0])cylinder(d=5,h=1.6,$fn=64);
                translate([0, 38.1, 0])cylinder(d=5,h=1.6,$fn=64);
                translate([96, 38.1, 0])cylinder(d=5,h=1.6,$fn=64);
              }

      }

    translate([-25.1, -0.25, 0])translate([0, 0, -0.002])translate([25, 43, 0])color("silver")cube([50.2, 0.5, 12.008]);
    translate([0, 0, 1])color("MediumVioletRed")union(){
          translate([0, 0, 0])translate([0, 0, -0.1])translate([2, 0, 0])cube([5.5, 2.05, 11.799999999999999]);
          translate([0, 0, 0])translate([0, 0, -0.1])translate([93.5, 0, 0])cube([5.5, 2.05, 11.999999999999998]);
        }

  }
}
$fn=64;
SmdDispenser();
