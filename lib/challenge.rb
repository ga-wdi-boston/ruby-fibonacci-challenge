# frozen_string_literal: true

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

  def self.new(n = 1)
    FibonacciRange.new(PHI**n).each_with_index do |fib, i|
      return fib unless (i + 1) < n
    end
  end
end
