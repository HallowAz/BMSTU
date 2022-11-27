# frozen_string_literal: true

require_relative 'part_3'

# module for user input
module Main
  include Change
  puts 'Введите строку'
  puts 'Для завершения ввода, введите 0'

  old = []

  loop do
    el = gets
    break if el == "0\n"

    old << el
  end
  if old.length.zero?
    puts 'Пустая строка'
  else
    puts 'Исходная:'
    puts old
    puts 'Скорректированная:'
    puts Change.fun(old)
  end
end
