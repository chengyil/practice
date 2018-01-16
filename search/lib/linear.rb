require_relative 'search'
class Linear < Search
  class << self
    def run(item, haystack)
      found_index = nil
      haystack.each.with_index(0) do |i,index|
        if i == item 
          found_index = index 
          break
        end
      end
      found_index
    end
  end
end
