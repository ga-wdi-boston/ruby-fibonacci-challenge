require 'pry'

# FibonacciRange class
class FibonacciRange
  include Enumerable

  attr_reader :stop

  private :stop

  def initialize(stop)
    @stop = stop
  end

  def each
    # start at 0
    previous_fib = 0
    current_fib = 0
    while current_fib <= stop
      yield current_fib
      next_fib = get_next_fib(previous_fib, current_fib)
      # advance the state of current and previous fib
      previous_fib = current_fib
      current_fib = next_fib
    end
  end

  def get_next_fib(previous_fib, current_fib)
    current_fib.zero? ? 1 : current_fib + previous_fib
  end
end

class FibonacciNumber
end

binding.pry
''
