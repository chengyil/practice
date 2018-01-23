module Sort
  module Recursive 
    class Quick
      include Implementation
      implementation do
        recursive(bag, 0, size - 1) if size > 1
      end

      def recursive(bag, start_index, end_index)
        # parition
        partition_index = partition(bag, start_index, end_index)
        # sort left
        recursive(bag, start_index, partition_index - 1) if start_index < partition_index - 1
        # sort right
        recursive(bag, partition_index + 1, end_index) if end_index > partition_index + 1
      end

      def partition(bag, start_index, end_index)
        # select pivot index 
        return start_index if start_index >= end_index
        pivot = bag[pivot_index(start_index, end_index)]
        lower_bound = start_index + 1
        upper_bound = end_index
        # loop until index meet
        loop do
          # while lower bound index are smaller than pivot, increase lower_bound
          lower_bound += 1 while(lower_bound <= end_index && bag[lower_bound])

          # while upper bound index are bigger than pivot, decrease upper_bound
          upper_bound -= 1 while(upper_bound >= start_index && bag[upper_bound] > pivot)

          # if lower bound index >= upper bound index, break loop, otherwise
          break if lower_bound >= upper_bound

          # swap, and continue looping
          swap {
            bag[lower_bound],bag[upper_bound] = bag[upper_bound],bag[lower_bound]
            lower_bound += 1
            upper_bound -= 1
          }
        end
        bag[pivot_index(start_index, end_index)],bag[upper_bound] = bag[upper_bound], bag[pivot_index(start_index, end_index)]
        upper_bound
      end

      def pivot_index(start_index, end_index)
        # for now, always choose start index as pivot
        start_index
      end
    end
  end
end
