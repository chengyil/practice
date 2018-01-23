module Sort
  module Recursive 
    class Insertion
      include Implementation
      implementation do
        recursive(bag,1) if size > 1
      end

      def recursive(bag,sorting_index)
        original_sorting_index = sorting_index
        sorted_index = sorting_index - 1
        loop do
          if bag[sorted_index] > bag[sorting_index]
            swap do
              bag[sorted_index], bag[sorting_index] = bag[sorting_index],bag[sorted_index]
              sorting_index = sorted_index
              sorted_index -= 1
            end
            break if sorting_index.zero?
          else
            break
          end
        end
        recursive(bag,original_sorting_index + 1) if original_sorting_index + 1 < size
      end
    end
  end
end
