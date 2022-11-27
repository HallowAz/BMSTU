# frozen_string_literal: true

# found increasing or not array
module Seek
  def self.fun(arr)
    sub_arr = arr.take_while { |elem| elem.to_f.positive? }
    return 'Нет отрицательных элементов' if sub_arr == arr
    return 'Возрастает' if sub_arr == sub_arr.sort

    'Не возрастает'
  end
end
