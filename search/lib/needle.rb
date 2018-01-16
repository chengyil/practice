class Needle 
  include Comparable
  attr_reader :value

  def initialize(n = 100_000)
    @value = rand(n)
  end

  def <=>(other)
    @value <=> other.to_i
  end

  def to_i
    @value.to_i
  end

  def to_s
    @value.to_s
  end
end
