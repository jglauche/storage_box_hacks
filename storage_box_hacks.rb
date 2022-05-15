#!/usr/bin/env ruby
require "jenncad"
include JennCad

class StorageBoxHacks < Project
  def config
    {}
  end

  # for bigger part strips that can fold
  def smd_strip_top
    SmdStripTop.new(config)
  end

  # for resistors, etc
  def smd_dispenser
    SmdDispenser.new({ strip_w: 0.6  })
  end

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



  def container_base_calibration
    ContainerBaseCalibration.new(config)
  end
  # jenncad-append-project-magic

end

StorageBoxHacks.new.run
