#!/usr/bin/env ruby
require "jenncad"
include JennCad

BIG_CONTAINER_Z = 63

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

  def smd_dispenser_24_4
    SmdDispenser.new({ strip_h: 24, strip_w: 6.0 })
  end

  def smd_dispenser_48_4
    SmdDispenser.new({ strip_h: 48, strip_w: 8.0 })
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

  def container_2x0_5
    Container.new({num_x: 2, num_y: 0.5})
  end

  def container_2x1_5
    Container.new({num_x: 2, num_y: 1.5})
  end

  def container_2x2
    Container.new({num_x: 2, num_y: 2})
  end

  def container_2_5x0_5
    Container.new({num_x: 2.5, num_y: 0.5})
  end

  def container_2_5x1
    Container.new({num_x: 2.5, num_y: 1})
  end


  def container_2_5x1_5
    Container.new({num_x: 2.5, num_y: 1.5})
  end

  def container_2_5x2
    Container.new({num_x: 2.5, num_y: 2})
  end

  def container_2_5x2_5
    Container.new({num_x: 2.5, num_y: 2.5})
  end

  def container_3x0_5
    Container.new({num_x: 3.0, num_y: 0.5})
  end

  def container_3x1
    Container.new({num_x: 3.0, num_y: 1})
  end

  def container_3x1_5
    Container.new({num_x: 3.0, num_y: 1.5})
  end

  def container_3x2
    Container.new({num_x: 3.0, num_y: 2.0})
  end

  def container_3x2_5
    Container.new({num_x: 3.0, num_y: 2.5})
  end

  def container_3x3
    Container.new({num_x: 3.0, num_y: 3.0})
  end

  def container_3_5x3_5
    Container.new({num_x: 3.5, num_y: 3.5})
  end

  def container_4x0_5
    Container.new({num_x: 4, num_y: 0.5})
  end

  def container_4x1
    Container.new({num_x: 4, num_y: 1})
  end

  def container_4x1_5
    Container.new({num_x: 4, num_y: 1.5})
  end

  def container_4x2
    Container.new({num_x: 4, num_y: 2})
  end

  def container_4x2_5
    Container.new({num_x: 4, num_y: 2.5})
  end

  def container_4x3
    Container.new({num_x: 4, num_y: 3})
  end

  def container_4x3_5
    Container.new({num_x: 4, num_y: 3.5})
  end

  def container_4x4
    Container.new({num_x: 4, num_y: 4})
  end

  # big containers for EuroPlus Pro >K<44.76/19
  # FIXME: the bttoms of the containers is different - needs to be fixed

  # NOTE: the left one has a different footprint - need to be checekd
  def big_container_1x1
     Container.new({num_x: 1, num_y: 1, z: BIG_CONTAINER_Z})
  end

  def big_container_1x1_5
     Container.new({num_x: 1, num_y: 1.5, z: BIG_CONTAINER_Z})
  end

  def big_container_1x2
     Container.new({num_x: 1, num_y: 2, z: BIG_CONTAINER_Z})
  end




  def container_base_calibration
    ContainerBaseCalibration.new(config)
  end
  # jenncad-append-project-magic

end

StorageBoxHacks.new.run
