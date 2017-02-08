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

# original way
# class FibonacciNumber
#   def self.new(num = 1)
#     stop = 0
#     stop += 1 while FibonacciRange.new(stop).to_a.length < num
#     FibonacciRange.new(stop).to_a[-1].to_i
#   end
# end

# recursive way
class FibonacciNumber
  def self.new(num = 1)
    array = [0, 1]
    array.push(array[-2] + array[-1]) until array.length > num
    array[num - 1]
  end
end
