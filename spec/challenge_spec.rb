# frozen_string_literal: true

require 'binding_of_caller'
require_relative '../lib/challenge.rb'

describe 'FibonacciRange' do
  subject(:fibonacci_range) { FibonacciRange.new(10) }

  it 'is a FibonacciRange' do
    expect(subject).to be_a(FibonacciRange)
  end

  it 'is an Enumerable' do
    expect(subject).to be_an(Enumerable)
  end

  it 'has required attributes' do
    expect(subject.instance_variables).to include(:@stop)
  end

  describe '#each' do
    it 'stores minimal state' do
      local_vars = subject.map do
        binding.of_caller(1).eval('local_variables')
      end.flatten.uniq

      expect(local_vars.length).to be <= 3
    end
  end

  it '#map(&:itself) produces a Fibonacci sequence as an array' do
    expect(subject.map(&:itself)).to eql([0, 1, 1, 2, 3, 5, 8])
  end

  describe '#to_a' do
    it 'returns a Fibonacci sequence as an array' do
      expect(subject.to_a).to eql([0, 1, 1, 2, 3, 5, 8])
    end
  end
end

describe 'FibonacciNumber' do
  subject(:fibonacci_number) { FibonacciNumber.new(3) }

  it 'is an integer' do
    expect(subject).to be_an(Integer)
  end

  it 'has no attributes' do
    expect(subject.instance_variables).to be_empty
  end

  it 'returns the nth Fibonacci number' do
    expect(FibonacciNumber.new(1)).to eql(0)
    expect(FibonacciNumber.new(2)).to eql(1)
    expect(FibonacciNumber.new(3)).to eql(1)
    expect(FibonacciNumber.new(4)).to eql(2)
    expect(FibonacciNumber.new(10)).to eql(34)
  end
end
