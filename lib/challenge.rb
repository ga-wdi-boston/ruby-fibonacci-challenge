# frozen_string_literal: true

# FibonacciRange is Enumerable.
# FibonacciRange has one instance variable @stop. It stores no other state on the instance.
# #each stores no more than three values to do its work: current_fib, previous_fib, and next_fib.
# FibonacciRange.new takes one required, positional argument: stop
# FibonacciRange always starts at 0 when creating a new sequence.
# You should not create a list when FibonacciRange.new is called. Instead,
# FibonacciRange.new(10).map(&:itself) should return [0, 1, 1, 2, 3, 5, 8].
# This is referred to as "lazy evaluation".
# FibonacciRange.new(10).to_a should return [0, 1, 1, 2, 3, 5, 8]
class FibonacciRange
  include Enumerable

  attr_reader :stop
  def initialize(stop)
    @stop = stop
  end
  def anynacci(current_fib, stop)
    n = current_fib.length
    result = current_fib.dup

    (n+1..stop).each do
      result << result.last(n).reduce(:+)
  end

    result
  end
end


class FibonacciNumber
end
