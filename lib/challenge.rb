# Produces fibonacci sequences
class FibonacciRange
  include Enumerable

  def initialize(stop)
    @stop = stop
  end

  def each
    seed = [0, 1]
    current = seed[1]
    yield seed[0]
    while current <= @stop
      yield current
      current = seed.reduce(&:+)
      seed = [seed[1], current]
    end
  end
end

class FibonacciNumber
end
