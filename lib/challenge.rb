# frozen_string_literal: true

class FibonacciRange
  include Enumerable

  def each
    previous_fib = 0 # || nil
    current_fib = 0
    next_fib = 1

    while current_fib <= stop
      yield current_fib

      previous_fib = current_fib
      current_fib = next_fib
      next_fib = current_fib + previous_fib
    end
  end

  attr_reader :stop
  private :stop

  def initialize(stop)
    @stop = stop
  end
end

class FibonacciNumber
  PHI = (1 + Math.sqrt(5)) / 2

  def self.new(n = 1)
    FibonacciRange.new(PHI**n).each_with_index do |fib, i|
      return fib unless (i + 1) < n
    end
  end
end
