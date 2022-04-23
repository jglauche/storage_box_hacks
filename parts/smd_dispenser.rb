
class SmdDispenser < Part
  def initialize(opts={})
    @opts = opts
    @strip_h = 10
    @strip_w_actual = opts[:strip_w]
    @strip_w_smaller = @strip_w_actual + 0.4
    @strip_w_upper_guide = @strip_w_smaller + 0.2
    @strip_w = @strip_w_smaller + 1.9
    @side_wall = 1.5
    @outer_wall = 1.0
    @box = {x: 101, y: 43.1, z: @strip_h }
    @bottom = {x: @box[:x], y: @box[:y], z: 1.6}
    @spool_dia =  @box[:y] - 5.5 - @strip_w_smaller  # 36.6
    @strip_corner_dia = 20
    @upper_strip_exit_offset = @spool_dia / 2.0 + @strip_w
    @upper_strip_corner_dia = 29 - @strip_w_actual
    @exit_angle = -90
    @label_w = 50
    @splitter_x = @label_w+0
    @splitter_w = 3
    @tape_exit_y = @upper_strip_exit_offset

    @cutout_x = @splitter_x + @splitter_w + 5
    @cutout_w = 20

    # self adhesive magnet 10x5x1mm
    @magnet_w = 5.5
    @magnet_depth = 2.05
    @magnet_z = 1

#    @single_wall = 0.25
  end


  def corner(outer_wide, inner_d)
    d = outer_wide + inner_d/2.0
    corn = cylinder(d: d*2)
    corn -= cylinder(d: inner_d)#.moveh(x: d+@strip_w, y: d+@strip_w).color("green")
    corn *= cube(x: d, y: d).moveh(x: -d, y: -d)

    offset = -inner_d/2.0 - outer_wide/2.0
    corn.set_anchor(x: {y: offset})
    corn.set_anchor(y: {x: offset})

    corn
  end

  # NOTE: extra messy code, some things are hardcoded that shouldn't
  def tape_path
    l = @spool_dia/2.0 + @side_wall
    res = cube(x: l, y: @strip_w, z: @strip_h).moveh(x: l-0.1)

    co = corner(@strip_w, @strip_corner_dia)
    res += co.movea(:x)

    res.movei(co.anchor[:y])
    vertical_wall = @upper_strip_exit_offset - @strip_corner_dia/2.0 - @strip_w/2.0

    res += cube(x: @strip_w, y: vertical_wall+0.2, z: @strip_h).cx.movei(co.anchor[:x]).move(y: -0.1)

    cou = corner(@strip_w, @upper_strip_corner_dia)
    upper = cou
    tape_exit = -1*(co.anchor[:x][:y] + cou.anchor[:x][:y]) + vertical_wall - 0.85

    # upper bend
    res += upper.rotate(z: -90).movei(cou.anchor[:y]).move(y: @upper_strip_exit_offset )


    thinner = hull(
      cube(x: 10, y: @strip_w, z: @strip_h).nc.moveh(y: -@strip_w_upper_guide),
      cube(x: 10, y: @strip_w_smaller, z: @strip_h).nc.move(x: 5)
    )
    res += thinner.move(x: 15, y: tape_exit)

    #res += cube(x: @label_w - @splitter_w-10, y: @strip_w_upper_guide, z: @strip_h).nc.move(x: 15, y: tape_exit).color("green")
    # this one goes to the end
    res += cube(x: @box[:x], y: @strip_w_smaller, z: @strip_h).nc.move(x: 15, y: tape_exit ).color("blue")
#

    splitter = hull(
      cube(x: @splitter_w*2, y: 1, z: @strip_h).nc.move(x: @splitter_w-2, y: @strip_w*2),
      cube(x: @splitter_w, y: 0.1, z: @strip_h).nc.move(x: -@splitter_w)
    )
    res += splitter.move(x: @splitter_x, y: tape_exit + @strip_w_smaller)

    res += cube(x: @cutout_w, y: @box[:y] - tape_exit, z: @strip_h).nc.move(x: @cutout_x, y: tape_exit )




    hl = @box[:x] - @spool_dia - @outer_wall*7
    storage = hull(
      cylinder(d: @spool_dia),
      cylinder(d: @spool_dia).move(x: hl)
    ).moveh(xy: @spool_dia, y: -@strip_w)

    res += storage.move(x: @side_wall*2)

    res
  end

  def magnet
    cube(x: @magnet_w, y: @magnet_depth).nc
  end

  def part
    res = rcube(@box).nc
    res -= tape_path.moveh(xy: @strip_w).move(x: @side_wall, y: @outer_wall) #.color("red")
    res.move(z: @bottom[:z])

    res += rcube(@bottom).nc
    res = res.color("pink")
    res -= cube(x: @label_w+0.2, y: 0.5, z: 12).move(x: @label_w/2.0, y: @box[:y]-0.1).color("silver")
    magnets = magnet.move(x: 2)
    magnets += magnet.move(x: @box[:x] - @magnet_w - 2)
    res -= magnets.move(y: @single_wall, z: @magnet_z)

    res
  end
end
