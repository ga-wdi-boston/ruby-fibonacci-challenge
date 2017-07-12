# frozen_string_literal: true

class FibonacciRange
  def initialize(stop)
    @stop = stop
  end

  def fib_r(a, b, stop)
    n == 0 ? a : fib_r(b, a + b, stop - 1)
  end

  def fib(n)
    fib_r(0, 1, stop)
  end
end
