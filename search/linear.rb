require 'benchmark'

class Haystack
  attr_reader :haystack
  def initialize(number, range)
    @haystack = number.times.map { rand(range) }
  end
end

to_search = rand(100_000)
p "to search for #{to_search}"
haystack = Haystack.new(1_000_000,10_000_000).haystack
found = false
found_index = -1
time = Benchmark.measure do
  haystack.each.with_index(1) do |i,index|
    if i == to_search
      found = true
      found_index = index 
      break
    end
  end
end

p "Done search in #{time.real * 1000}s"

if found
 p "Found it in index #{found_index} with value #{haystack[found_index-1]}"
else
 p "Cannot Find it"
end

