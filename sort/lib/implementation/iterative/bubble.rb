module Sort
  module Iterative 
    class Bubble
      include Implementation
      implementation do
        if size > 1
          # for size - 1 comparsion
          for i in 0...size-1 do
            # compare each pair of unsorted part of bag 
            for j in 1...(size-i*0) do
              if bag[j-1] > bag[j]
                swap do
                  bag[j-1],bag[j] = bag[j],bag[j-1]
                end
              end
            end
          end
        end
      end
    end
  end
end
