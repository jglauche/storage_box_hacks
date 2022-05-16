class ContainerBaseCalibration < Part
  def initialize(opts={})
    @num_x = opts[:num_x] || 3
    @num_y = opts[:num_y] || 1

    @grid_opts = {
      extra_w: $conf[:grid_extra_w],
      extra_len: $conf[:grid_extra_len],
      h: $conf[:h_inner],
      w: $conf[:w_inner],
      repeat_x: @num_x,
      repeat_y: @num_y,
      lid_extra_w: $conf[:lid_extra_w],
      lid_extra_h: $conf[:lid_extra_h],
    }

    @grid = GridSegment.new(@grid_opts)

    @wall = 3
    @center_size = @grid.xy
    @shrink = 1.0
    @size = @grid.xy_g
    @x = @size * @num_x - @shrink
    @y = @size * @num_y - @shrink

    @d = 5

    @x_inner = 50
    @y_inner = 50
    @bottom_wall = 2.0

    @z = $conf[:h_inner]

    # don't print the middle for this calibration piece
    @middle_cut_inverted = 28

  end

  def part
    res = rcube(x: @x, y: @y, z: @z, d: @d)
    res -= rcube(x: @x_inner, y: @y_inner, z: @z).move(z: @bottom_wall)
    res -= rcube(x: @x - @middle_cut_inverted, y: @y - @middle_cut_inverted, d: @d)
    res.moveh(x: @x, y: @y).moveh(xy: @center_size - @size + @shrink)


    res.color("red")
    res -= @grid.part


    res
  end
end
