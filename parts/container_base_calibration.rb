class ContainerBaseCalibration < Part
  def initialize(opts={})
    @x = 53
    @y = 53
    @d = 5

    @x_inner = 50
    @y_inner = 50
    @bottom_wall = 2.0

    @h_inner = 1.5
    @z = @h_inner
    @w_inner = 2.08

    # don't print the middle for this calibration piece
    @middle_cut_inverted = 18

    @grid = GridSegment.new(extra_w: 0.8, extra_len: 2, h: @h_inner, w: @w_inner)
  end

  def part
    res = rcube(x: @x, y: @y, z: @z, d: @d)
    res -= rcube(x: @x_inner, y: @y_inner, z: @z).move(z: @bottom_wall)
    res -= rcube(x: @x - @middle_cut_inverted, y: @y - @middle_cut_inverted, d: @d)


    res.color("red")
    res -= @grid

    res
  end
end
