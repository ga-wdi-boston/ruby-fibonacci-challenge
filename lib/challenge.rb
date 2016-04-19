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

# Returns the nth fibonacci
class FibonacciNumber < String
  def initialize(n = 1)
    self << get_fib(n).to_s
  end

  # Recursive method for returning the nth fibonacci
  def get_fib(count, seed = [0, 1])
    return seed[count - 1] unless count > 2
    get_fib(count - 1, [seed[1], seed.reduce(&:+)])
  end
end
