require 'benchmark'
# create a method that takes two lists (arrays)
# both arrays will be sorted and we want to concat
# two nested loops - checks against each element in
# the array and if element in list_one is larger
# than element in list_two, add list_two element in inner loop
# add list_one element in outer loop

def concat_list_take_one(list_one, list_two)
   # brute force attempt
  concatenated_array = list_one + list_two
  concatenated_array.sort!
end

def concat_list_take_two(list_one, list_two)
  # second attempt without sort
  i = 0
  k = 0

  final_result = []

  while i < list_one.count
    while k < list_two.count && list_one[i] > list_two[k]
      final_result << list_two[k]
      k += 1
    end
    final_result << list_one[i]
    i += 1
  end
  final_result
end

##### Tests #####
list_one = [2, 7, 10] # bigger nums
list_two = [1, 3, 5] # smaller nums
p concat_list_take_one(list_one, list_two)
p concat_list_take_two(list_one, list_two)
# p concat_list_take_one(list_one, list_two) == [1, 2, 3, 5, 7, 10]

puts "Benchmark Tests"
puts "Take One:"
puts Benchmark.measure {concat_list_take_one(list_one, list_two)}
puts "Take Two:"
puts Benchmark.measure {concat_list_take_two(list_one, list_two)}