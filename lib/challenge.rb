# frozen_string_literal: true

# Fibonacci Range finder class
class FibonacciRange
  include Enumerable
  attr_accessor :stop

  def initialize(stop_num)
    @stop = stop_num
  end

  def each
    prev_num = 0
    curr_num = 1
    0.upto(@stop) do |i|
      if i <= 1
        yield i
      elsif prev_num + curr_num < @stop
        i = prev_num + curr_num
        yield prev_num + curr_num
        prev_num = curr_num
        curr_num = i
      end
    end
  end
end

FibonacciRange.new(10).map(&:itself)

class FibonacciNumber
end
