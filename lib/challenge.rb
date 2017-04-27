# frozen_string_literal: true

class FibonacciRange
 include Enumerable

 def initialize(stop)
   @stop = stop
   @result_array = [0,1]
 end


def each(&block)
  @result_array.each do |i|
    while i < @stop
    p i + 1
    @result_array << i + 1
  end
  end
  self
end

end

p FibonacciRange.new(10).map(&:itself)
p FibonacciRange.new(10).to_a

class FibonacciNumber
end
