# FibonacciRange
class FibonacciRange
  include Enumerable
  attr_accessor :stop

  def initialize(stop)
    @stop = stop
  end

  def each
    current_fib = 1
    previous_fib = 0
    next_fib = 0
    self
    i = 0
    while i < @stop
      next_fib = current_fib + previous_fib
      previous_fib = current_fib
      current_fib = next_fib
      self
      i += 1
    end
  end
end

class FibonacciNumber
end
