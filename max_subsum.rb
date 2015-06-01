def max_subsum(collection)
  last_index = collection.length - 1
  sum_counter = Hash.new

  collection.each_with_index do |number, index|
    sum_counter[index] = (collection[index..last_index]).inject(:+)
  end

  # gives you back an array of indices with largest numbers
  start_index = sum_counter.max_by { |k, v| v }.first
  [start_index, last_index]
end


p max_subsum([1, 2, 3]) == [0, 2]
p max_subsum([100, -101, 200, -3, 1000]) == [2, 4]
