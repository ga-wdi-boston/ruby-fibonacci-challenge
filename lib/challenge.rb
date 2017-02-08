# A FibonacciRange
class FibonacciRange
  include Enumerable

  def initialize(stop)
    @stop = stop
  end

  # need previous_fib previous_fib = current_fib = and next_fib

  def each
    @current_fib = 0
    @next_fib = 1
    while @current_fib <= @stop
      yield @current_fib
      @previous_fib = @current_fib
      @current_fib = @next_fib
      @next_fib = @current_fib + @previous_fib
    end
  end
end

class FibonacciNumber
end
