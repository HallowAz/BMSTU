# frozen_string_literal: true

require_relative 'part_2'

RSpec.describe Seek do
  describe '#self.fun' do
    context 'Enter more than N' do
      it 'return message' do
        expect(described_class.fun([1, 2, 3])).to eql('Нет отрицательных элементов')
      end
    end
    context 'Noramal array'
    it 'Increasing' do
      expect(described_class.fun([1, 2, 3, -5])).to eql('Возрастает')
    end
    it 'Not increasing' do
      expect(described_class.fun([2, 1, -3])).to eql('Не возрастает')
    end
  end
end
