#!/usr/bin/env ruby
require "jenncad"
include JennCad

class StorageBoxHacks < Project

  def initialize
    $conf = {
      grid_extra_w: 1.0,
      grid_extra_len: 2,
      lid_extra_w: 0.4,
      lid_extra_h: 0.4,
      h_inner: 1.5,
      w_inner: 2.08,
    }
  end

  def config
    {}
  end

  # this one was my first attempt to make a dispenser for a 100-pack of SMD buttons. May be removed in the future
  def smd_strip_top
    SmdStripTop.new(config)
  end

  # These dispensers for resistors, etc.  (10mm tape)
  def smd_dispenser
    SmdDispenser.new({ strip_w: 0.6  })
  end

  # thicker smd parts, smd capacitors, diodes (10mm tape)
  def smd_dispenser_10mm_bigger_parts
    SmdDispenser.new({ strip_w: 1.55 })
  end

  def smd_dispenser_12_2
    SmdDispenser.new({ strip_h: 12, strip_w: 2.05 })
  end

  def smd_dispenser_12_25
    SmdDispenser.new({ strip_h: 12, strip_w: 2.5 })
  end

  def smd_dispenser_16_4
    SmdDispenser.new({ strip_h: 16, strip_w: 4.0 })
  end

  def smd_dispenser_16_6
    SmdDispenser.new({ strip_h: 16, strip_w: 6.0 })
  end


  def coin_battery_holder
    CoinBatteryHolder.new(config)
  end

  def coin_battery
    CoinBattery.new(config)
  end

  def grid_segment
    GridSegment.new(config)
  end

  def container
    Container.new(config)
  end

  def container_1x0_5
    Container.new({num_x: 0.5, num_y: 1})
  end

  def container_1_5x0_5
    Container.new({num_x: 1.5, num_y: 0.5})
  end

  def container_1x1_5
    Container.new({num_x: 1.5, num_y: 1})
  end

  def container_1_5x1_5
    Container.new({num_x: 1.5, num_y: 1.5})
  end

  def container_2x1_5
    Container.new({num_x: 2, num_y: 1.5})
  end





  def container_base_calibration
    ContainerBaseCalibration.new(config)
  end
  # jenncad-append-project-magic

end

StorageBoxHacks.new.run
