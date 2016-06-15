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

class FibonacciNumber
  def initialize(num = 1)
    @num = num
    @fib_range = FibonacciRange.new(@num).to_a
  end

  def to_i
    @fib_range[@num - 1]
  end
end
