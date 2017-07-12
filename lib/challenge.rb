# frozen_string_literal: true

class FibonacciRange
  include Enumerable
  def initialize(stop)
    @stop = stop
  end

  def each
    curr_fib = 0
    next_fib = 1
    while curr_fib < @stop
      yield curr_fib
      prev_fib = curr_fib
      curr_fib = next_fib
      next_fib = prev_fib + curr_fib
    end
  end

  def to_a
    each_with_object([]) { |f, o| o << f }
  end
end

class FibonacciNumber
end
