module JennCad
  class PathProto2 < Thing

    attr_accessor :angles, :elements, :lpos, :thing
    def initialize(args)
     # @d = args[:d]
      # @z = args[:z]
      @thing = args[:part] #// cylinder(d: @d, z: @z)
      @part = new_thing

      @lpos = {x: 0, y: 0, z: 0}
      @coords = [@lpos]
      @parts = [new_thing]
      @angles = [nil]
      @subtracts = []
      @late_adds = []

      super(args)
    end

    def new_thing
      r = @thing.clone
      r.transformations = []
      r
    end

    def line(lpos)
      @parts << hull(
        new_thing,
        new_thing.move(lpos)
      ).move(@lpos)
      add_lpos(lpos)
      angles << nil
    end

    def angle(args)
      @parts << nil
      args[:lpos] = @lpos.dup
      @angles << args
    end


    def apply_angle(part, next_part, args)
      return if args.nil?
      return if part.nil?
      if next_part.nil?
        puts "Warning: angle does not work with a next part defined"
        return
      end

      id = args[:d]
      width = new_thing.y || new_thing.d
      dia = width + id/2.0

      # outer radius
      sub = cube(xy: width + id).moveh(xy: 0).move(args[:lpos])


      res = cylinder(d: dia*2)
      res -= cylinder(d: id) #.moveh(x: d+@strip_w, y: d+@strip_w).color("green")
      res += cube(xy: dia).moveh(xy: -dia)
      add = res.moveh(xy: dia + id/2.0 ).move(args[:lpos])
      return sub, add
    end

    def add_lpos(lpos)
      [:x, :y, :z].each do |key|
        @lpos[key] += lpos[key]
      end
      @coords << lpos
    end

    def to_openscad
      res = new_thing
      (0..@parts.size+1).each do |i|
        res += @parts[i-1] unless @parts[i-1].nil?
        sub, add = apply_angle(@parts[i-1], @parts[i+1], @angles[i])
        unless sub.nil?
          res -= sub.color("red")
        end
        unless add.nil?
          res += add
        end
      end

     res
    end


  end
end

class Mathtest < Part
  def initialize(opts={})
  end

  def part
    obj = cylinder(d:10, h:4)
    p = PathProto2.new(part: obj)
    p.line(x: -50, y: 0)
    p.angle(d: 15, id: 3)
    p.line(x: -0, y: 50)
    p.angle(d: 15, id: 3)
     p.line(x: 20, y: 50)
    p.angle(d: 15, id: 3)
     p.line(x: 0, y: 50)




    res = p.to_openscad
    res
  end

  def part_mew
    d = 5
    @direction = -1
    hu = hull(
      cylinder(d: d, h: 6),
      cylinder(d: d, h: 6).move(y:-30)
    )
    hu += hull(
      cylinder(d: d, h: 6),
      cylinder(d: d, h: 6).move(x: 30)
    )
    @angle = 180
    @current_angle = 60
    len = d * 2
    x = Math::sin((@current_angle/180.0)*Math::PI)*len
    y = Math::cos((@current_angle/180.0)*Math::PI)*len

    res = circle(d: len)

    r = @current_angle - (@angle - @current_angle)
    if r < 0
      r += 360
    end
    if r >= 360
      r -= 360
    end
    points = [[0,0]]
    points << [0, len]
    points << [x, y]
    res *= polygon(points:points)
    res = res.rotate(z: @angle)

    r_midpoint = 0 #(r - @current_angle / 2.0)
    res = res.extrude(h:10).rotate(z: r_midpoint).color("red").moveh(x: 0, y: d)
    x = Math::sin((r_midpoint/180.0)*Math::PI)*d
    y = Math::cos((r_midpoint/180.0)*Math::PI)*d


    #res.moveh(x: x, y: -y)
    res+= hu.color("green")





    res
  end
end
