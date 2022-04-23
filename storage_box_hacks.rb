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

  def mathtest
    Mathtest.new(config)
  end

  def pathtest
    Pathtest.new(config)
  end
  # jenncad-append-project-magic

end

StorageBoxHacks.new.run
