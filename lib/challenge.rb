class FibonacciRange
  include Enumerable
  attr_reader :stop

  def initialize(stop)
    @stop = stop
  end

  def each()
    current_fib = 0
    previous_fib = 0
    next_fib = 1
    while current_fib < stop
      yield current_fib
      previous_fib = current_fib
      current_fib = next_fib
      next_fib = previous_fib + current_fib
    end
  end
end

class FibonacciNumber
  attr_reader :current_fib

  def FibonacciNumber.new(place = 0)
    current_fib = 0
    previous_fib = 0
    next_fib = 1
    (place - 1).times do
      previous_fib = current_fib
      current_fib = next_fib
      next_fib = previous_fib + current_fib
    end
    return current_fib
  end
end
