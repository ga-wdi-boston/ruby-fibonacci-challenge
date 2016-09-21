require 'pry'

# class for getting a range of Fibonacci numbers
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
    # advance the sequence until the stop value is reached
    while current_fib <= stop
      yield current_fib
      # get the next number in the sequence
      next_fib = get_next_fib(previous_fib, current_fib)
      # advance the state of current and previous fib
      previous_fib = current_fib
      current_fib = next_fib
    end
  end

  # helper method to get the next number in the Fibonacci sequence
  def get_next_fib(previous_fib, current_fib)
    current_fib.zero? ? 1 : current_fib + previous_fib
  end
end

# class for getting the nth Fibonacci number
class FibonacciNumber
  def self.new(n = 1)
    get_nth_fib(n)
  end

  def self.get_nth_fib(n)
    n == 1 ? 0 : ((1.618**(n - 1) - -0.618**(n - 1)) / 2.236).round
  end
end

# binding.pry
# ''
