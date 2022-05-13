class CoinBatteryHolder < Part
  def initialize(opts={})
    @spacing = 1
    @battery = CoinBattery.new( opts )
    @battery.set_anchor_from(:top_face, :top_spacing, z: @spacing)
  end

  def part
    res = 10.of @battery, :top_spacing

    res.color("silver")
  end
end
