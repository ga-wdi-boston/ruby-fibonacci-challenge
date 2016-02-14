# An enumerable Fibonacci number generator
class FibonacciRange
  include Enumerable
  attr_reader :stop
  private :stop

  def initialize(stop)
    @stop = stop
  end

  def each
    current = 0
    successor = 1
    while current < stop
      yield current
      current, successor = successor, current + successor
    end
    self
  end
end

# Generates the nth Fibonacci number
class FibonacciNumber
  PHI = (1 + Math.sqrt(5)) / 2
  # Return the nth Fibonacci number as the instance
  def self.new(nth = 1)
    FibonacciRange.new(PHI**nth).each_with_index do |fib, i|
      return fib unless (i + 1) < nth
    end
  end
end
