class Container < Part
  def initialize(opts={})
    @num_x = opts[:num_x] || 1
    @num_y = opts[:num_y] || 1

    @grid_opts = {
      extra_w: 1.0,
      extra_len: 2,
      h: @h_inner,
      w: @w_inner,
      repeat_x: @num_x,
      repeat_y: @num_y,
    }
    @grid = GridSegment.new(@grid_opts)

    @center_size = @grid.xy
    @size = @grid.xy_g

   # @size = 53.2
    @shrink = 1.0
    @x = @size * @num_x - @shrink
    @y = @size * @num_y - @shrink


    @z = 44 + 1
    @d = 5

    @wall = 3
    @x_inner = @x - @wall
    @y_inner = @y - @wall
    @bottom_wall = 2.0

    @h_inner = 1.5
    @w_inner = 2.08


  end

  def part
    base = rcube(x: @x, y: @y, z: @z, d: @d).color("purple")
    res = base.fix
    res -= rcube(x: @x_inner, y: @y_inner, z: @z).move(z: @bottom_wall)
    res.moveh(x: @x, y: @y).moveh(xy: @center_size-@size + @shrink)
    res.color("red")

    grid_bits = @grid.part
    diff_x = @num_x.ceil - @num_x
    diff_y = @num_y.ceil - @num_y
    if diff_x > 0
      if diff_y > 0
        grid_bits += @grid.part.move(xy:-@size/2.0)
      end
      grid_bits += @grid.part.move(x:-@size/2.0)
    end
    if diff_y > 0
      grid_bits += @grid.part.move(y:-@size/2.0)
    end
    res -= grid_bits
    #res = grid_bits

    res
  end
end
