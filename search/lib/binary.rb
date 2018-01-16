require_relative 'search'
class Binary 
  extend Search

  search_implementation do |needle, haystack|
    binary_search(needle, haystack, 0, haystack.size - 1) if haystack.size > 0
  end

  class << self
    def binary_search(needle, haystack, start_index, last_index)
      middle_index = middle_index(start_index, last_index)
      hay = haystack[middle_index]
      if needle == hay
        return middle_index
      elsif needle > hay && !last_hay?(start_index, last_index)
        return binary_search(needle, haystack, middle_index + 1, last_index)
      elsif needle < hay && !last_hay?(start_index, last_index)
        return binary_search(needle, haystack, start_index, middle_index - 1)
      else
        return nil
      end
    end

    def last_hay?(start_index, last_index)
      start_index == last_index
    end

    def middle_index(start_index, last_index)
      ((start_index + last_index)/2).floor
    end
  end
end
