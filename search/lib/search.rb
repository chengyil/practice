require 'benchmark'
class Search
  class << self
    def search(item, haystack)
      found_index = nil
      time = Benchmark.measure do
        found_index = run(item, haystack)
      end
      found_index
    end
  end
end
