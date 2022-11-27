# frozen_string_literal: true

# Work with files
module FirstPart
  def self.create(digits)
    file = File.open('F', 'w')
    digits.each { |digit| file.write(digit, ' ') }
    file.close
  end

  def self.take
    File.read('F').split.map(&:to_i)
  end

  def self.create_even
    file = File.open('G', 'w')
    take.each { |elem| file.write(elem, ' ') if elem.even? }
    file.close
  end

  def self.create_odd
    file = File.open('H', 'w')
    take.each { |elem| file.write(elem, ' ') if elem.odd? }
    file.close
  end
end
