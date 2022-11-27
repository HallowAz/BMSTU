# frozen_string_literal: true

# Changing string
module Change
  def self.fun(old)
    old.each_index do |index|
      old[index].gsub!(/(ш|ч|щ)онок/) { "#{::Regexp.last_match(1)}ата" }.gsub!(/(е|о)нок/) { 'ята' }
    end

    old
  end
end
