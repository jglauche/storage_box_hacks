class GridSegment < Part
  attr_accessor :xy, :xy_g, :lid_segment_h

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
    @lid_segment_center = @lid_segment_inner + (@lid_segment_outer- @lid_segment_inner) / 2.0
    # 45-46.5 height across the container, ~2.7 - 3.5
    @lid_z = 46.5 - 2.7 + 1.2 # 1.2 is some margin
    @lid_segment_extra_w = opts[:lid_extra_w] || 0.0
    @lid_segment_extra_h = opts[:lid_extra_h] || 0.0
    @lid_segment_w = 1.2 + @lid_segment_extra_w
    @lid_segment_h = 3.1 + @lid_segment_extra_h

    @w_orig = 1.08
    @w = opts[:w] || @w_orig
    @h = opts[:h] || 1.0 # measured 0.9 - 0.96

    @extra_w = opts[:extra_w] || 0.0
    @extra_len = opts[:extra_len] || 0
    @segment_outer = @segment_size_outer + @extra_w / 2.0
    @segment_inner = @segment_size_inner - @extra_w / 2.0
    @segment_len = @segment_dist_outer + @extra_len

    @xy = @segment_size_outer + @segment_dist_outer / 2.0
    @xy_g = @xy + 2
    @z = 1
    @repeat_x = opts[:repeat_x] || 1
    @repeat_y = opts[:repeat_y] || 1
    @no_top = opts[:no_top] || false
    @no_bottom = opts[:no_bottom] || false
  end

  def wall
    res = rcube(xy: @segment_outer, d: @segment_corner_dia)
    res -= rcube(xy: @segment_inner, d: @segment_corner_dia)
    res -= square(x: @segment_outer - @segment_len*2, y: @xy)
    res -= square(y: @segment_outer - @segment_len*2, x: @xy)

    res
  end

  def top_wall
    res = square(x: @lid_segment_beam_length, y: @lid_segment_w).moveh(y: @lid_segment_center)
    res += square(x: @lid_segment_beam_length, y: @lid_segment_w).moveh(y: -@lid_segment_center)
    res += square(y: @lid_segment_beam_length, x: @lid_segment_w).moveh(x: @lid_segment_center)
    res += square(y: @lid_segment_beam_length, x: @lid_segment_w).moveh(x: -@lid_segment_center)
    res
  end

  def base
    square(xy: @xy).inner_anchors(@segment_pos)#.color("darkgray")
  end

  def part
    bottom_plate = base
    bottom_cut = wall
    top_cut = top_wall

    @repeat_x.ceil.times do |i|
      @repeat_y.ceil.times do |j|
        coords = {x: i*@xy_g, y: j*@xy_g}
        bottom_plate += base.move(coords)
        bottom_cut += wall.move(coords)
        top_cut += top_wall.move(coords)
      end
    end

    res = bottom_plate.extrude(z: @z).ghost.move(z: -@z) unless @no_bottom
    res += bottom_plate.extrude(z: @z).ghost.move(z: @lid_z) unless @no_top

    res += bottom_cut.extrude(z: @h).color("red") unless @no_bottom
    res += top_cut.extrude(z: @lid_segment_h).move(z: @lid_z-@lid_segment_h).color("blue") unless @no_top

    # move to 0,0
    res.moveh(xy: @xy)
  end
end
