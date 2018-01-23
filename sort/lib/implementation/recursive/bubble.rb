module Sort
  module Recursive 
    class Bubble 
      include Implementation
      implementation do
        recursive(bag,0) if size > 1
      end

      def recursive(bag, comparision_tries)
        for i in 1...(size-comparision_tries) do
          swap do
            bag[i-1], bag[i] = bag[i],bag[i-1] if bag[i-1] > bag[i]
          end
        end
        recursive(bag,comparision_tries+1) if comparision_tries < size - 1
      end
    end
  end
end
