
class SmdDispenser < Part
  def initialize(opts={})
    @opts = opts
    @strip_h = 10
    @strip_w = 2.5
    @strip_w_smaller = 1.0
    @side_wall = 1.5
    @outer_wall = 1.0
    @box = {x: 101, y: 43.5, z: @strip_h }
    @bottom = {x: @box[:x], y: @box[:y], z: 2}
    @spool_dia = 36
    @strip_corner_dia = 15
    @upper_strip_exit_offset = 22.5
    @upper_strip_corner_dia = 28
    @exit_angle = -90
    @label_w = 50
    @splitter_x = @label_w+0
    @splitter_w = 3

    @cutout_x = @splitter_x + @splitter_w + 5
    @cutout_w = 20

    # self adhesive magnet 10x5x1mm
    @magnet_w = 5.5
    @magnet_depth = 1.25
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

  # NOTE: gosh I wish you could easily make path and a radius.. guess you can with openscad?
  def tape_path
    l = @spool_dia/2.0 + @side_wall
    k = @box[:y] - 28
    res = cube(x: l, y: @strip_w, z: @strip_h).moveh(x: l-0.1)

    co = corner(@strip_w, @strip_corner_dia)
    res += co.movea(:x)

    res.movei(co.anchor[:y])
    res += cube(x: @strip_w, y: k, z: @strip_h).moveh(y: k-0.5).movei(co.anchor[:x])

    # FIXME the original idea was to move the tape out of hte way but that will send the parts flying out of the compartments
    #
    #upper = cube(x: @strip_w, y: k, z: @strip_h).moveh(y: k)
    cou = corner(@strip_w, @upper_strip_corner_dia)
    #upper = upper.move(cou.anchor[:y])
    upper = cou

    # cut away extra material
    upper -= cube(xy: @strip_w*6).nc.rotate(z: -@exit_angle)
    res += upper.rotate(z: -90).movei(cou.anchor[:y]).move(x: 0, y: @upper_strip_exit_offset ) #.color("red") #.rotate_around({x: 0, y: 0, z: 0}, z:-70)
    res += cube(x: @label_w - @splitter_w-9, y: @strip_w, z: @strip_h).nc.move(x: 15, y: @box[:y]-7 )

    res += cube(x: @box[:x], y: @strip_w_smaller, z: @strip_h).nc.move(x: 15, y: @box[:y]-7 )


    res += cube(x: @splitter_w, y: @strip_w*2, z: @strip_h).nc.move(x: @splitter_x, y: @box[:y]-5 )
    res += cube(x: @splitter_w, y: @strip_w*3, z: @strip_h).nc.rotate(z:-45).move(x: @splitter_x, y: @box[:y]-4).color("red")

    res += cube(x: @cutout_w, y: @strip_w*2, z: @strip_h).nc.move(x: @cutout_x, y: @box[:y]-7 )




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
    res = cube(@box).nc
    res -= tape_path.moveh(xy: @strip_w).move(x: @side_wall, y: @outer_wall) #.color("red")
  #  return res
    res.move(z: @bottom[:z])
    res += cube(@bottom).nc.color("pink")
    res -= cube(x: @label_w+0.2, y: 0.5, z: 12).move(x: @label_w/2.0, y: @box[:y]-0.1).color("silver")
    magnets = magnet.move(x: 2)
    magnets += magnet.move(x: @box[:x] - @magnet_w - 2)
    res -= magnets.move(y: @single_wall, z: @magnet_z)

    res
  end
end
