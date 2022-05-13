class Container < Part
  def initialize(opts={})
    @num_x = 1.5
    @num_y = 1

    @x = 53 * @num_x
    @y = 53 * @num_y
    @z = 44 + 1
    @d = 5

    @wall = 3
    @x_inner = @x - @wall
    @y_inner = @y - @wall
    @bottom_wall = 2.0

    @h_inner = 1.5
    @w_inner = 2.08
    @grid = GridSegment.new(
      extra_w: 0.8,
      extra_len: 2,
      h: @h_inner,
      w: @w_inner,
      repeat_x: @num_x.ceil,
      repeat_y: @num_y.ceil,
    )
  end

  def part
    res = rcube(x: @x, y: @y, z: @z, d: @d)
    res -= rcube(x: @x_inner, y: @y_inner, z: @z).move(z: @bottom_wall)
    res.moveh(x: @x, y: @y)
    res.color("red")
    res -= @grid

    res
  end
end
