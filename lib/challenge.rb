# Fibonacci Range class
class FibonacciRange
  include Enumerable

  def initialize(stop)
    @stop = stop
  end

  def each
    current_fib = 1
    next_fib =  0
    while next_fib <= @stop
      yield(next_fib)
      previous_fib = current_fib
      current_fib = next_fib
      next_fib = previous_fib + current_fib
    end
  end
end

#
class FibonacciNumber
  def self.new(num = 1)
    stop = 0
    while FibonacciRange.new(stop).to_a.length < num
      stop += 1
    end
    FibonacciRange.new(stop).to_a[-1].to_i
  end
end

# tests
# my_range = FibonacciRange.new(0).map(&:itself)
# p my_range
#
# my_range = FibonacciRange.new(5).map(&:itself)
# p my_range
#
# my_range = FibonacciRange.new(5).to_a.length
# p my_range
#
# my_num = FibonacciNumber.new(5)
# p my_num
