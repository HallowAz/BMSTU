# frozen_string_literal: true

# Point info
class POINT
  def initialize(cors)
    @x_cor = cors[0]
    @y_cor = cors[1]
  end

  def print
    printf('Точка: %<xcor>f, %<ycor>f ', xcor: @x_cor, ycor: @y_cor)
  end

  def neibr(block)
    @y_cor == block.call(@x_cor)
  end
end
