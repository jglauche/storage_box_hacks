class SmdStripTop < Part
  def initialize(opts={})
    @opts = opts
    @yellow_h = 44
    @yellow_h_inner = 43
    @yellow_w = 52
    @yellow_w_inner = 50
    @yellow_l = 106
    @yellow_l_inner = 104

    @strip_w = 16 + 1.2
    @strip_h = 5.6 + 0.4
    @strip_right = 1.7
    @strip_left = 5
    @strip_side_h = 0.5 + 2.5

    @margin_w = 1
    @margin_l = 3
    @margin_h = @strip_h + 3

    @top_thickness = 3
    @inner_w = @yellow_w_inner - 2.2
    @inner_l = @yellow_l_inner - 5.5
    @inner_h = @yellow_h_inner - @margin_h - @top_thickness

    @tape_y = 30
  end

  def yellow_case
    res = cube(x: @yellow_w, y: @yellow_l, z: @yellow_h)
    res -= cube(x: @yellow_w_inner, y: @yellow_l_inner, z: @yellow_h_inner).move(z: @yellow_h - @yellow_h_inner)
    res.color("yellow")
  end

  def tape_b
    part_w = @strip_w - @strip_left - @strip_right + 0.6

    res = cube(x: @strip_w, y: @tape_y, z: @strip_side_h).move(z: @strip_h)
    res += cube(x: part_w, y: @tape_y, z: @strip_h).moveh(x: @strip_w-part_w).move(x: -@strip_right)
    res
  end

  def tape
    corner = tape_b.rotate(x:90).to_2d.rotate(z: 90).move(x: 10, y: 0).rotate_extrude(angle: 180, convexity: 20)
    res = corner.rotate(y: 90).moveh(y: @tape_y - 0.1).move(z: - 10)
    res += tape_b
    res
  end

  def part
    part_h = @yellow_h_inner - @margin_h
    res  = rcube(x: @yellow_w_inner - @margin_w, y: @yellow_l_inner - @margin_l, z: part_h)
    res -= rcube(x: @inner_w, y: @inner_l, z: @inner_h)

    # opening lid to put tape back in
    res -= cube(x: @strip_w, y: @strip_w, z: @strip_h).rotate(x: -30).move(z: @inner_h+2, y: @yellow_l_inner / 2.0 - 20)


    #res -= cube(x: @strip_w, y: @strip_w, z: @strip_h).rotate(x: -30).move(z: @inner_h+3, y: -(@yellow_l_inner / 2.0 - 30))


#    res += yellow_case()
    res -= tape.mirror(x: 1).mirror(y:1).move(y: -10, z: @inner_h - @strip_h + @top_thickness + 0.1)

    res.rotate(y:180).move(z: part_h)





  end
end
