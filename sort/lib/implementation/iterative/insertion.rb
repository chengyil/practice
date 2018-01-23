module Sort
  module Iterative 
    class Insertion
      include Implementation
      implementation do
        if size > 1
          # for each item in bag
          for i in 1...size do
            # get index to be sorted
            sorting_index = i
            sorted_index = i-1
            # while each sorted item 
            loop do
              # swap if sorted item is bigger than compared item
              if bag[sorted_index] > bag[sorting_index] 
                swap do
                  bag[sorted_index],bag[sorting_index] = bag[sorting_index],bag[sorted_index]
                  sorting_index = sorted_index
                  sorted_index -= 1
                end
                break if sorting_index.zero?
              else
                # else break loop
                break
              end
            end
          end
        end
      end
    end
  end
end
