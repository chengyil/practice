require 'benchmark'
module Sort
  module Implementation
    attr_reader :swaps, :bag, :sorted, :benchmark
    
    def initialize(bag)
      @swaps = 0
      @original_bag = bag.dup
      @bag = bag
    end

    def size
      bag.size
    end

    def swap(&block)
      p self
      @swaps += 1
      block.call
    end

    module ClassMethods
      def implementation(&block)
        @implementation = block
      end

      def sort(bag)
        implementation = new(bag)
        @benchmark = Benchmark.measure do
          implementation.instance_exec(bag, &@implementation)
        end
        implementation
      end
    end

    def self.included(klass)
      klass.extend ClassMethods
    end
  end
end
