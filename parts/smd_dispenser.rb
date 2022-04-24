
class SmdDispenser < Part
  def initialize(opts={})
    @opts = opts
    @strip_h = opts[:strip_h] || 10
    @strip_w_actual = opts[:strip_w]

    @box = {x: 101, y: 43.1, z: @strip_h }
    @bottom = {x: @box[:x], y: @box[:y], z: 1.6}
    @side_wall = 1.5
    @outer_wall = 1.0
    @top_wall = 2.0
    @bottom_wall = 2.3

    @strip_w_smaller = @strip_w_actual + 0.4
    @strip_w_upper_guide = @strip_w_smaller + 0.2
    @strip_w = @strip_w_smaller + 1.9
    if @strip_w_actual < 1.6
      @spool_size_reduce = 5.5
    else
      @spool_size_reduce = 5.5 + (@strip_w_actual - 1.2)
      @strip_w = @strip_w_smaller + 0.5
    end

    @strip_corner_dia = 20
    @strip_corner_inner_dia = 7.5 #+ @strip_w

    # wall thickness from exit width to top
    @upper_section = @top_wall + @side_wall*2 + @strip_w


    @spool_dia =  @box[:y] - @upper_section - @bottom_wall
    @spool_width = @box[:x] - @spool_dia - @strip_w - @outer_wall*4

    #@upper_strip_exit_offset = @spool_dia / 2.0 + @strip_w
    #@upper_strip_corner_dia = 29 - @strip_w_actual
    #@exit_angle = -90
    @label_w = 50
    @splitter_x = @label_w - 13
    @splitter_w = 3
    @tape_exit_y = @spool_dia - @upper_section
    @exit_extra_len = 5

    @cutout_x = @splitter_x + @splitter_w + 5
    @cutout_w = 20

    # self adhesive magnet 10x5x1mm
    @magnet_w = 5.5
    @magnet_depth = 2.05
    @magnet_z = 1
  end

  def magnet
    cube(x: @magnet_w, y: @magnet_depth).nc
  end

  def part
    res = rcube(@box).nc

    storage = hull(
      cylinder(d: @spool_dia),
      cylinder(d: @spool_dia).move(x: @spool_width)
    ).moveh(y: @spool_dia - @strip_w)
    entrance_len = @spool_dia / 2.0 - @strip_corner_inner_dia / 2.0 + @side_wall
    part = cylinder(d: @strip_w, h: @strip_h+1)
    tpath = Path.new(part: part, a: 0)
    tpath.line(l: entrance_len, a: -90)
    tpath.corner(d: @strip_corner_dia, id: @strip_corner_inner_dia, from: :right, a: 90)
    tpath.line(l: @tape_exit_y, a: 90)
    tpath.corner(d: @strip_corner_dia, id: @strip_corner_inner_dia, from: :bottom, a: 90)

    tpath.line(l: entrance_len, a: 90)
    ex, ey = tpath.pos
    apath = tpath.assemble
    inner = apath + storage
    # move everything to center point
    inner = inner.move(x: -ex, y: -ey)

    if @strip_w_smaller < @strip_w
      thinner = hull(
        cube(x: 10, y: @strip_w, z: @strip_h). cy,
        cube(x: 10, y: @strip_w_smaller, z: @strip_h).cy.move(x: 5)
      )
      inner += thinner
    end

    inner += cube(x: @box[:x], y: @strip_w_smaller, z: @strip_h).cy.color("blue")
    splitter = hull(
      cube(x: @splitter_w*2, y: 0.001, z: @strip_h).nc.move(x: @splitter_w-2, y: @strip_w*2.5),
      cube(x: @splitter_w, y: 0.001, z: @strip_h).nc.move(x: -@splitter_w)
    )
    inner += splitter.move(x: @splitter_x)

    inner += cube(x: @cutout_w, y: @strip_w*3).nc.move(x: @cutout_x)

    # move everything to start at 0,0 to +x, +y
    inner = inner.move(x: entrance_len + @strip_corner_inner_dia / 2.0 + @strip_w, y: ey + @strip_w / 2.0)

    res -= inner.move(x: @side_wall, y: @bottom_wall)

    res.move(z: @bottom[:z])

    res += rcube(@bottom).nc
    res = res.color("pink")
    res -= cube(x: @label_w+0.2, y: 0.5).move(x: @label_w/2.0, y: @box[:y]-0.1).color("silver")
    magnets = magnet.move(x: 2)
    magnets += magnet.move(x: @box[:x] - @magnet_w - 2)
    res -= magnets.move(y: @single_wall, z: @magnet_z)

    res
  end
end
