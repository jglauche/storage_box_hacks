class Container < Part
  def initialize(opts={})
    @num_x = opts[:num_x] || 1
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

    @center_size = @grid.xy
    @size = @grid.xy_g

   # @size = 53.2
    @shrink = 1.0
    @x = @size * @num_x - @shrink
    @y = @size * @num_y - @shrink


    @z = opts[:z] || 45
    @d = 5
    @inner_d = 2

    @wall = 3
    @x_inner = @x - @wall
    @y_inner = @y - @wall
    @bottom_wall = 2.3
  end

  def corner_cleanup
    cube(xy: @d/2.0, z: @grid.lid_segment_h+0.1).move(z: @z-@grid.lid_segment_h)
  end

  def part
    base = rcube(x: @x, y: @y, z: @z, d: @d).color("purple")

    res = base.fix
    res -= rcube(x: @x_inner, y: @y_inner, z: @z, d: @inner_d).move(z: @bottom_wall)
    res.moveh(x: @x, y: @y).moveh(xy: @center_size - @size + @shrink)
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
    # cut away the tiny corners on parts that possibly have both intersections
    refbase = cube(x: @x - (@x-@x_inner)/2.0, y: @y - (@y- @y_inner) / 2.0, z: @z).nc
    if diff_x > 0 && diff_y > 0
      grid_bits.at(refbase.corners, refbase) do
        grid_bits += corner_cleanup
      end
    end

    res -= grid_bits
    #res = grid_bits

    res
  end
end
