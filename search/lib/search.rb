require 'benchmark'
module Search
  def search_implementation(&block)
    @search_implementation = block
  end

  def search(item, haystack)
    found_index = nil
    time = Benchmark.measure do
      found_index = @search_implementation.call(item,haystack)
    end
    found_index
  end
end
