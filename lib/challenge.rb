# :nodoc:
class FibonacciRange
  attr_reader :stop, :sequence
  include Enumerable

  def initialize(stop)
    @stop = stop
    sequence = []
  end

  def each
    0.upto(stop) do |i|
      if i.zero?
        sequence << 0
      elsif i == 1
        sequence << 1
      else
        sequence << sequence[i - 1] + sequence[i - 2]
      end
    end
  end
end

class FibonacciNumber
end
