# Does fibonnaci stuff
class FibonacciRange
  include Enumerable

  attr_reader :stop

  def initialize(stop)
    @stop = stop
  end

  def each
    current_fib = 0
    previous_fib = 1
    while current_fib < @stop
      yield current_fib
      next_fib = current_fib + previous_fib
      current_fib = next_fib
      previous_fib = current_fib - previous_fib
    end
  end
end

class FibonacciNumber
end

binding.pry
''
