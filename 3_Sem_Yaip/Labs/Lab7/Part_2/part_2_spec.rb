# frozen_string_literal: true

require_relative 'part_2'

RSpec.describe SimpleWord do
  describe 'Simple_Word' do
    let(:test_word) { SimpleWord.new('Тест') }
    it 'correct creating' do
      expect(test_word.class).to eql(SimpleWord)
    end
    it 'select' do
      expect(test_word.word).to eql('Тест')
    end
    it 'count letters' do
      expect(test_word.count_letters).to eql(4)
    end
  end
end

RSpec.describe ModWord do
  describe 'Mod_Word' do
    let(:test_word) { ModWord.new('Азамат') }
    it 'correct creating' do
      expect(test_word.class).to eql(ModWord)
    end
    it 'check parent' do
      expect(test_word.class.superclass).to eql(SimpleWord)
    end
    it 'select' do
      expect(test_word.word).to eql('Азамат')
      expect(test_word.len).to eql(6)
    end
    it 'count_letters' do
      expect(test_word.count_letters).to eql(6)
    end
    it 'count_glas' do
      expect(test_word.count_glas).to eql(3)
    end
  end
end
