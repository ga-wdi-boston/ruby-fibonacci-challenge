# create FibonacciRange class
class FibonacciRange
  include Enumerable
  attr_reader :stop

  def initialize(stop)
    @stop = stop
  end

  def each
    previous_fib = 0
    current_fib = 1
    next_fib = 1
    yield previous_fib
    yield current_fib
    while next_fib < @stop
      yield next_fib
      previous_fib = current_fib
      current_fib = next_fib
      next_fib = previous_fib + current_fib
    end
    self
  end
end

# create FibonacciNumber class
class FibonacciNumber
end
