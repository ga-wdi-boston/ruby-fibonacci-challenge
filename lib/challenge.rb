# class for creating a fibonacci range
class FibonacciRange
  include Enumerable

  def each
    previous_fib = 0
    current_fib = 1
    next_fib = 1

    while previous_fib <= stop
      yield previous_fib
      previous_fib = current_fib
      current_fib = next_fib
      next_fib = previous_fib + current_fib
    end
  end

  attr_reader :stop

  def initialize(stop)
    @stop = stop
  end
end

class FibonacciNumber < FibonacciNumber
  def initialize
  end
end
