# frozen_string_literal: true

require_relative 'part_3'

# Main func
module Main
  points = [[1.0, 0.0], [0, 1], [0.0, 0.0], [Math::PI / 2.0, 0.0], [Math::PI / 2.0, 1.0], [0.0, Math::PI / 2.0],
            [1.0, Math::PI / 2.0], [Math::PI, 0.0], [Math::PI, -1.0], [0.0, Math::PI], [-1.0, Math::PI]]
  points.map! do |elem|
    POINT.new(elem)
  end
  lmcos = ->(x_val) { Math.cos(x_val) }
  lmsin = ->(x_val) { Math.sin(x_val**2) }
  prsin = proc { |x_val| Math.sin(x_val**2) }
  prcos = proc { |x_val| Math.cos(x_val) }
  puts "Lambda:\n\n"
  puts "Кривая y = cos(x)\n\n"
  points.each do |point|
    if point.neibr(lmcos)
      print point.print, " принадлежит кривой\n"
    else
      print point.print, " не принадлежит кривой\n"
    end
  end

  puts "\nКривая y = sin(x^2)\n\n"
  points.each do |point|
    if point.neibr(lmsin)
      print point.print, " принадлежит кривой\n"
    else
      print point.print, " не принадлежит кривой\n"
    end
  end

  puts "\nProc:\n\n"

  points.each do |point|
    if point.neibr(prcos)
      print point.print, " принадлежит кривой\n"
    else
      print point.print, " не принадлежит кривой\n"
    end
  end

  puts "\nКривая y = sin(x^2)\n\n"
  points.each do |point|
    if point.neibr(prsin)
      print point.print, " принадлежит кривой\n"
    else
      print point.print, " не принадлежит кривой\n"
    end
  end
end
