# frozen_string_literal: true

require_relative 'part_1'

# Main file
module Main
  print('Введите значение e: ')
  e_val = gets.to_f
  val = FirstPart.func(e_val)

  print 'Результат: '
  puts val[0]
  print 'Количество итераций: '
  puts val[1]
end
