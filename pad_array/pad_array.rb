def pad(array, min_size, value = nil)
  array = array.dup

  if array.length <= min_size
    (min_size - array.length).times { array << value }
  end

  array
end

def pad!(array, min_size, value = nil)

  if array.length <= min_size
    (min_size - array.length).times { array << value }
  end

  array
end

# p pad([1, 2, 3], 5, 'apple') == [1, 2, 3, 'apple', 'apple']
# p pad([1, 2, 3], 5) == [1, 2, 3, nil, nil]
# p pad([1, 2, 3], 3) == [1, 2, 3]

# array = [1, 2, 3]
# p array.object_id == pad!(array, 5, 'apple').object_id
