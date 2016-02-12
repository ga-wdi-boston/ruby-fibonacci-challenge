require_relative '../lib/challenge.rb'

describe 'FibonacciRange' do
  subject(:fibonacci_range) { FibonacciRange.new(0, 10) }
end

describe 'FibonacciNumber' do
  subject(:fibonacci_number) { FibonacciNumber.new(10) }
end
