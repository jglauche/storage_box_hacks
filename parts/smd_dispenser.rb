module JennCad
  class Thing
    attr_accessor :anchor

    def set_anchor(args)
      self.anchor ||= {}
      args.each do |key, val|
        self.anchor[key] = val
      end
    end

    def movea(key)
      a = self.anchor[key]
      unless a
        puts "Error: Anchor #{key} not found"
        puts "Available anchor: #{self.anchor}"
        return self
      else
        self.movei(a)
      end
    end

    def movei(args)
      to = {}
      [:x, :y, :z].each do |key|
        if args[key]
          to[key] = args[key]*-1
        end
      end
      move(to)
    end

  end
end

class SmdDispenser < Part
  def initialize(opts={})
    @opts = opts
    @strip_h = 10
    @strip_w = 3.5
    @strip_w_smaller = 3
    @side_wall = 2
    @outer_wall = 2
    @box = {x: 100, y: 42, z: @strip_h }
    @bottom = {x: @box[:x], y: @box[:y], z: 1.6}
    @spool_dia = 36
    @strip_corner_dia = 5
    @upper_strip_exit_offset = 22.5
    @upper_strip_corner_dia = 19
    @exit_angle = -70
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
    k = @box[:y]
    res = cube(x: l, y: @strip_w, z: @strip_h).moveh(x: l)

    co = corner(@strip_w, @strip_corner_dia)
    res += co.movea(:x)

    res.movei(co.anchor[:y])
    res += cube(x: @strip_w, y: k, z: @strip_h).moveh(y: k).movei(co.anchor[:x])

    upper = cube(x: @strip_w_smaller, y: k, z: @strip_h).moveh(y: k)
    cou = corner(@strip_w_smaller, @upper_strip_corner_dia)#.rotate(z:-70)
    upper = upper.move(cou.anchor[:y])
    upper += cou
    # cut away extra material
    upper -= cube(xy: @strip_w*4).nc.rotate(z: @exit_angle-45)

    res += upper.rotate(z: -60).movei(cou.anchor[:y]).move(y: @upper_strip_exit_offset ) #.rotate_around({x: 0, y: 0, z: 0}, z:-70)

    hl = @box[:x] - @spool_dia - @outer_wall*5
    storage = hull(
      cylinder(d: @spool_dia),
      cylinder(d: @spool_dia).move(x: hl)
    ).moveh(xy: @spool_dia, y: -@strip_w)

    res += storage.move(x: @side_wall*2)

    res
  end

  def part
    res = cube(@box).nc
    res -= tape_path.moveh(xy: @strip_w).move(x: @side_wall, y: @outer_wall) #.color("red")
    res.move(z: @bottom[:z])
    res += cube(@bottom).nc.color("pink")

    res
  end
end
