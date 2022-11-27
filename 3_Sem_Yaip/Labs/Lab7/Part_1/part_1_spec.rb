# frozen_string_literal: true

require_relative 'part_1'

# rubocop:disable Metrics/BlockLength
RSpec.describe FirstPart do
  include FirstPart
  describe 'FirstPart' do
    let(:first_even) { (1..100).select(&:even?).sample }
    let(:first_odd) { (1..100).select(&:odd?).sample }
    let(:second_even) { (1..100).select(&:even?).sample }
    let(:second_odd) { (1..100).select(&:odd?).sample }
    let(:input) { [first_even, first_odd, second_odd, second_even] }

    before do
      FirstPart.create(input)
    end

    it 'existing' do
      prov = File.exist? 'F'
      expect(prov).to eql(true)
    end

    it 'correct numbers' do
      numbers_test = File.read 'F'
      numbers_test = numbers_test.split.map(&:to_i)
      expect(described_class.take).to eql(numbers_test)
    end

    it 'correct even numbers' do
      FirstPart.create_even
      numbers_even = File.read 'G'
      numbers_even = numbers_even.split.map(&:to_i)
      expect(numbers_even.all?(&:even?)).to eql(true)
      expect(numbers_even).to eql([first_even, second_even])
    end

    it 'correct odd numbers' do
      FirstPart.create_odd
      numbers_odd = File.read 'H'
      numbers_odd = numbers_odd.split.map(&:to_i)
      expect(numbers_odd.all?(&:odd?)).to eql(true)
      expect(numbers_odd).to eql([first_odd, second_odd])
    end
  end
end
# rubocop:enable Metrics/BlockLength
