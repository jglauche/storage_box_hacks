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
    SmdDispenser.new(config)
  end

  # jenncad-append-project-magic

end

StorageBoxHacks.new.run
