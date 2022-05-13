module CoinBattery(){
  cylinder(d=30,h=3.2,$fn=120);}
module CoinBatteryHolder(){
  color("silver")union(){
      color("silver")CoinBattery();
      translate([0, 0, 4.2])color("silver")CoinBattery();
      translate([0, 0, 8.4])color("silver")CoinBattery();
      translate([0, 0, 12.6])color("silver")CoinBattery();
      translate([0, 0, 16.8])color("silver")CoinBattery();
      translate([0, 0, 21])color("silver")CoinBattery();
      translate([0, 0, 25.2])color("silver")CoinBattery();
      translate([0, 0, 29.4])color("silver")CoinBattery();
      translate([0, 0, 33.6])color("silver")CoinBattery();
      translate([0, 0, 37.8])color("silver")CoinBattery();
    }
}
$fn=64;
CoinBatteryHolder();
