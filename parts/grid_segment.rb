class GridSegment < Part
  def initialize(opts={})
    @segment_size_outer = 48.2
    @segment_size_inner = 46.15
    @segment_dist_outer = 7.0
    @segment_corner_dia = 5.0
    @segment_pos = 5
    @spacing_between_grids_inner = 6.7

    @lid_segment_beam_length = 43.2
    @lid_segment_inner = 47.0
    @lid_segment_outer = 49.2


    @w_orig = 1.08
    @w = opts[:w] || @w_orig
    @h = opts[:h] || 1.0 # measured 0.9 - 0.96

    @extra_w = opts[:extra_w] || 0.0
    @extra_len = opts[:extra_len] || 0
    @segment_outer = @segment_size_outer + @extra_w / 2.0
    @segment_inner = @segment_size_inner - @extra_w / 2.0
    @segment_len = @segment_dist_outer + @extra_len

    @xy = @segment_size_outer + @segment_dist_outer / 2.0
    @z = 1
    @repeat_x = opts[:repeat_x] || 1
    @repeat_y = opts[:repeat_y] || 1
  end

  def wall
    res = rcube(xy: @segment_outer, d: @segment_corner_dia, z: @h+0.002)
    res -= rcube(xy: @segment_inner, d: @segment_corner_dia)
    res -= cube(x: @segment_outer - @segment_len*2, y: @xy)
    res -= cube(y: @segment_outer - @segment_len*2, x: @xy)

    res.color("red")
  end

  def top_wall(r=0)
  end

  def base
    cube(xy: @xy, z: @z).inner_anchors(@segment_pos).color("darkgray")
  end

  def grid_piece
    res = base.fix
    res += wall.move(z: @z-0.001)
    res.moveai(:top_face, base)
  end

  def part
    res = grid_piece
    @repeat_x.times do |i|
      @repeat_y.times do |j|
        res += grid_piece.move(x: i*@xy, y: j*@xy)
      end
    end

    # move to 0,0
    res.moveh(xy: @xy)
  end
end
