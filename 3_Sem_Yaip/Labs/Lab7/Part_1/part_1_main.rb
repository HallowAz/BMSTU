# frozen_string_literal: true

require_relative 'part_1'

# Main module
module Main
  include FirstPart
  puts 'Создание файла F'
  FirstPart.create((1..100).map { rand(1..100) })
  puts 'Извелечение данных из файла F'
  FirstPart.take
  puts 'Создание файла G'
  FirstPart.create_even
  puts 'Создание файла H'
  FirstPart.create_odd
end
