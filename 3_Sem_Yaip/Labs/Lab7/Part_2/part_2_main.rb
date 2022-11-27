# frozen_string_literal: true

require_relative 'part_2'

# Main file
module Main
  puts "Первый объект:\n\n"
  first = SimpleWord.new('Первое')
  puts 'Вывод значения своего поля: '
  first.print
  puts 'Вывод запроса на значение поля:'
  puts first.word
  puts 'Количество букв: '
  puts first.count_letters
  puts "\nВторой объект: \n\n"
  second = ModWord.new('Второе')
  puts 'Вывод значения своих полей: '
  second.print
  puts 'Вывод запросов на значение полей'
  puts second.word, second.len
  puts 'Вывод длины слова'
  puts second.count_letters
  puts 'Вывод количества гласных:'
  puts second.count_glas
end
