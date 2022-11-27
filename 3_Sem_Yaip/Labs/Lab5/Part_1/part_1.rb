# frozen_string_literal: true

# counting function
module FirstPart
  def self.fun(x_val)
    return 'Не принадлежит ОДЗ' if x_val.zero?

    root = Math.cos((5 * x_val) / (1 - 6 * x_val))
    return 'Подкоренное выражение - отрицательное' if root.negative?

    -Math.sqrt(root) / (x_val**2)
  end
end
