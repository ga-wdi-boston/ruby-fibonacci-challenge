# frozen_string_literal: true

class FibonacciRange
  include Enumerable
  @previous_fib = 0
  @current_fib = 1

  def initialize (stop)
    @stop = stop
  end

  def each
    array = [@previous_fib,@current_fib]
    @next_fib = 0
    while @next_fib < @stop
      puts @next_fib = @current_fib + @previous_fib
      array << @next_fib
    end
  end
end

class FibonacciNumber
end

FibonacciRange.new(10).map(&:itself)
