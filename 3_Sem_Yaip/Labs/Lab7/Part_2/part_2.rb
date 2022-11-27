# frozen_string_literal: true

# First Object
class SimpleWord
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def print
    puts word
  end

  def count_letters
    word.length
  end
end

# Second Object
class ModWord < SimpleWord
  attr_reader :len

  def initialize(word)
    super(word)
    @len = word.length
  end

  def print
    super
    puts @len
  end

  def count_glas
    word.downcase.count 'аеёиоуэюя'
  end
end
