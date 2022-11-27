# frozen_string_literal: true

# count y
module FirstPart
  def self.val(n_val)
    n_val / (n_val**2 + 2)
  end

  # This method smells of :reek:TooManyStatements
  def self.func(e_val)
    number = 1.0
    loop do
      @y_val = val(number)
      break if @y_val < e_val

      number += 1
    end
    [@y_val, number.to_i]
  end
end
