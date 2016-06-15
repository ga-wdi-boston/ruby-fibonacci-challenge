#
class FibonacciRange
  include Enumerable
  attr_reader :stop, :previous_fib, :current_fib, :next_fib

  def each
    @previous_fib = 0
    @current_fib = 1
    @next_fib = 0
    while @previous_fib <= stop
      yield @previous_fib
      @next_fib = @previous_fib + @current_fib
      @previous_fib = @current_fib
      @current_fib = @next_fib
    end
  end

  def initialize(stop)
    @stop = stop
  end
end

#
class FibonacciNumber
  def self.new(num = 1)
    stop = 0
    stop += 1 while FibonacciRange.new(stop).to_a.length < num
    FibonacciRange.new(stop).to_a[num - 1].to_i
  end
end

#
class FibonacciNumber
  def self.new(num = 1)
    array = [0, 1]
    array.push(array[-1] + array[-2]) until array.length >= num
    array[num - 1]
  end
end
