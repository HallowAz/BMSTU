# frozen_string_literal: true

require_relative 'part_1'

RSpec.describe FirstPart do
  include FirstPart
  describe '#funс' do
    context 'Correct values' do
      it 'return message' do
        expect(described_class.func(0.01)).to eql([0.009998000399920015, 100])
      end
      it 'return message' do
        expect(described_class.func(0.0001)).to eql([9.999999800000004e-05, 10_000])
      end
      it 'return message' do
        expect(described_class.func(0.05)).to eql([0.04975124378109453, 20])
      end
    end
  end
end
