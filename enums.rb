#implement your own each, map, and inject, select

module CustomEnumerable

  def map(&block)
    result = []

    each do |element|
      result << block.call(element)
    end
    result
  end

  def inject(accumulator, &block)

    each do |element|
      accumulator = block.call(accumulator, element)
    end
    accumulator
  end

  def select(&block)
    result = []
    each do |element|
      result << block.call(element)
    end
    result
  end
end

class ArrayWrapper
  include CustomEnumerable

  def initialize(*items)
    @items = items.flatten
  end

  def each(&block)
    @items.each(&block)
    self
  end
end



items = ArrayWrapper.new(1, 2, 3, 4, 5)

# result = items.map do |n|
#   n * 2
# end

# puts result

# result = items.inject(0) do |accumulator, element|
#   accumulator + element
# end

# puts result

result = items.select do |element|
  element if element % 2 == 0
end

puts result