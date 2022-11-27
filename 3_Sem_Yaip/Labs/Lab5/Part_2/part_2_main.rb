# frozen_string_literal: true

require './part_2'

# module for user input
module Main
  include Seek
  print 'Введите N: '
  num = gets.to_i
  print 'Введите N значений массива: '
  arr = gets.chomp!.split

  if arr.length > num
    puts 'Элементов больше N'
  elsif arr.length.zero?
    p 'Массив пустой'
  else
    puts Seek.fun(arr)
  end
end
