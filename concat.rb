# create a method that takes two lists (arrays)
# both arrays will be sorted and we want to concat
# two nested loops - checks against each element in
# the array and if element in list_one is larger
# than


def concat_list(list_one, list_two)
#   # concatenated_arrays = list_one + list_two
#   # return concatenated_arrays.sort!
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
list_two = [1, 3, 5] #smaller nums
list_one = [2, 7, 10] # bigger nums
p concat_list(list_one, list_two)
p concat_list(list_one, list_two) == [1, 2, 3, 5, 7, 10]