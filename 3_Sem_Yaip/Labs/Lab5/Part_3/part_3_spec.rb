# frozen_string_literal: true

require_relative 'part_3'

RSpec.describe Change do
  describe '#self.fun' do
    context 'random words' do
      it do
        f = File.open('random_words.txt')
        a = f.read.split
        f.close
        str1 = a.sample(3).join(' ')
        str2 = a.sample(3).join(' ')
        str3 = a.sample(3).join(' ')
        str = "#{str1}\n#{str2}\n#{str3}\n"
        str_new = str.clone
        str_new.gsub!('чонок', 'чата')
        str_new.gsub!('щонок', 'щата')
        str_new.gsub!('шонок', 'шата')
        str_new.gsub!('енок', 'ята')
        str_new.gsub!('онок', 'ята')
        expect(described_class.fun([str])).to eql([str_new])
      end
    end
  end
end
