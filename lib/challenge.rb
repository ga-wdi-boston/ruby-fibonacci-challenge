# frozen_string_literal: true

class FibonacciRange
  include Enumerable

  def initialize(stop)
    @stop = stop
    @current_fib = 0
    @next_fib = 1
  end

  def cycle_fibs
    @previous_fib = @current_fib
    @current_fib = @next_fib
    @next_fib = @previous_fib + @next_fib
  end

  def each(&block)
    until @stop <= @current_fib

      yield @current_fib
      cycle_fibs
    end
  end
end

class FibonacciNumber
end
