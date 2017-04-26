# frozen_string_literal: true

class FibonacciRange
  # FibonacciRange is Enumerable.
  include Enumerable
  attr_reader :fib


  # FibonacciRange has one instance variable @stop. It stores no other state on the instance.
  def initialize(stop)
    @stop = stop
  end

  # #each stores no more than three values to do its work: current_fib, previous_fib, and next_fib.
  def each
    current_fib, previous_fib, next_fib
  end
end

class FibonacciNumber

  def fib
    [0, 1, 1, 2, 3, 5, 8]
  end
end

# FibonacciRange always starts at 0 when creating a new sequence.
#
# You should not create a list when FibonacciRange.new is called.
# Instead, FibonacciRange.new(10).map(&:itself) should return [0, 1, 1, 2, 3, 5, 8].
#
# FibonacciRange.new(10).to_a should return [0, 1, 1, 2, 3, 5, 8]
