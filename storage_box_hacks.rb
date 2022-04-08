#!/usr/bin/env ruby
require "jenncad"
include JennCad

class StorageBoxHacks < Project
  def config
    {}
  end

  def smd_strip_top
    SmdStripTop.new(config)
  end

end

StorageBoxHacks.new.run
