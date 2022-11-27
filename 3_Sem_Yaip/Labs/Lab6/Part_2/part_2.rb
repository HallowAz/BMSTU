# frozen_string_literal: true

# counting y
module SecondPart
  def self.expr(val)
    val / (val**2 + 2)
  end

  def self.func(e_val)
    (1..Float::INFINITY).each do |index|
      val = expr(index.to_f)
      return [val, index] if val < e_val
    end
  end
end
