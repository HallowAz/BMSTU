# frozen_string_literal: true

require_relative 'part_3'
RSpec.describe POINT do
  describe '#neibr' do
    context 'func cos(x) lambda' do
      lmcos = ->(x) { Math.cos(x) }
      it 'return true 0, 1' do
        point = POINT.new([0.0, 1.0])
        expect(point.neibr(lmcos)).to eql(true)
      end
      it 'return true pi, -1' do
        point = POINT.new([Math::PI, -1.0])
        expect(point.neibr(lmcos)).to eql(true)
      end
      it 'return false 0, 0' do
        point = POINT.new([0.0, 0.0])
        expect(point.neibr(lmcos)).to eql(false)
      end
    end
  end
end
RSpec.describe POINT do
  describe '#neibr' do
    context 'func sin(x^2) lambda' do
      lmsin = ->(x) { Math.sin(x**2) }
      it 'return false 0, 1' do
        point = POINT.new([0.0, 1.0])
        expect(point.neibr(lmsin)).to eql(false)
      end
      it 'return false pi, -1' do
        point = POINT.new([Math::PI, -1.0])
        expect(point.neibr(lmsin)).to eql(false)
      end
      it 'return true 0, 0' do
        point = POINT.new([0.0, 0.0])
        expect(point.neibr(lmsin)).to eql(true)
      end
    end
  end
end
RSpec.describe POINT do
  describe '#neibr' do
    context 'func sin(x^2) proc' do
      prsin = proc { |x_val| Math.sin(x_val**2) }
      it 'return false 0, 1' do
        point = POINT.new([0.0, 1.0])
        expect(point.neibr(prsin)).to eql(false)
      end
      it 'return false pi, -1' do
        point = POINT.new([Math::PI, -1.0])
        expect(point.neibr(prsin)).to eql(false)
      end
      it 'return true 0, 0' do
        point = POINT.new([0.0, 0.0])
        expect(point.neibr(prsin)).to eql(true)
      end
    end
  end
end
RSpec.describe POINT do
  describe '#neibr' do
    context 'func cos(x) proc' do
      prcos = proc { |x_val| Math.cos(x_val) }
      it 'return false 0, 1' do
        point = POINT.new([0.0, 1.0])
        expect(point.neibr(prcos)).to eql(true)
      end
      it 'return false pi, -1' do
        point = POINT.new([Math::PI, -1.0])
        expect(point.neibr(prcos)).to eql(true)
      end
      it 'return true 0, 0' do
        point = POINT.new([0.0, 0.0])
        expect(point.neibr(prcos)).to eql(false)
      end
    end
  end
end
