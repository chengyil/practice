module Haystack
  class << self
    def generate(number, range)
      number.times.map { rand(range) }
    end
  end
end
