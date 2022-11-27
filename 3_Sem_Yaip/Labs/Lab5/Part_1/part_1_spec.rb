# frozen_string_literal: true

require_relative 'part_1'

RSpec.describe FirstPart do
  include FirstPart
  describe '#fun' do
    context 'Enter 0' do
      it 'return message' do
        expect(described_class.fun(0)).to eql('Не принадлежит ОДЗ')
      end
    end
    context 'Get negative' do
      it 'return message' do
        expect(described_class.fun(0.1386)).to eql('Подкоренное выражение - отрицательное')
      end
    end
    context 'Correct values' do
      it '1' do
        expect(described_class.fun(1)).to eql(-0.7350525871447157)
      end
      it '3' do
        expect(described_class.fun(2.to_f)).to eql(-0.19596926201072762)
      end
    end
  end
end
