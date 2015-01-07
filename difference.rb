def greatest_difference_of collection
  # sorted_collection = collection.sort

  # greatest_difference = sorted_collection.last - sorted_collection.first

  # p greatest_difference

  max = min = collection[0]

  collection.each { |item| max = item if item > max }

  p max
  p min

  p max - min
end

def smallest_difference_of collection
  sorted_collection = collection.sort

  smallest_difference = sorted_collection.first - sorted_collection.last

  p smallest_difference
end

collection = [12, 7, 8, 9, 11, 3, 4]

greatest_difference_of collection
smallest_difference_of collection