# frozen_string_literal: true
class FibonacciRange
  include Comparable
  attr_accessor :length
  def initialize(n)
    @length = n
 end
end

class FibonacciNumber < FibonacciRange
  def fibonacci
    fibonacci.new do |y|
      a = b = 1

    loop do
      y << a
      a, b = b, a + b
    end
    end
  end
  FibonacciRange.new(10).to_a
  p FibonacciRange
end
