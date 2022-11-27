# frozen_string_literal: true

require_relative 'part_1'

# module for user input
module Main
  puts 'Дана функция: y = - (cos**(1/2)(5x/(1-6x)))/x**2'
  print 'Введите x: '
  x_value = gets.to_f
  puts 'Result:'
  puts FirstPart.fun(x_value)
end
