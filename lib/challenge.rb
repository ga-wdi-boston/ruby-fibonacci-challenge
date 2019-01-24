# @Author: xiaojiezhang
# @Date:   2019-01-24T09:00:48-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-24T09:30:48-05:00


require 'pry'
# frozen_string_literal: true

class FibonacciRange
  include Enumerable

  def each
  current_fib =0
  next_fib=1
    while current_fib < @stop
        yield current_fib
        previous = current_fib
        current_fib = next_fib
        next_fib= current_fib+previous
    end
  end

  attr_reader :stop
  def initialize(num)
    @stop = num
  end


end

class FibonacciNumber
end

binding.pry
''
