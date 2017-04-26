# frozen_string_literal: true

class FibonacciRange
  include Enumerable

  attr_reader :stop
  private :stop

  def initialize(stop)
    @stop = stop
  end

  def each
    current_fib = 0
    next_fib = 1

    while current_fib <= stop
      yield current_fib

      current_fib, next_fib = next_fib, current_fib + next_fib
    end
  end
end

class FibonacciNumber
  PHI = (Math.sqrt(5) + 1) / 2

  def self.new(n)
    FibonacciRange.new(PHI**n / Math.sqrt(5)).each_with_index do |fib, i|
      return fib if i == n - 1
    end
  end
end
