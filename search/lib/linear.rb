require_relative 'search'
class Linear
  extend Search

  search_implementation do |item, haystack|
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
