require 'benchmark'

# Input: "ambreen"
# Output: "neerbma"
# create a method that will take one argument
# iterate over the array and swap the last index with
# the first index

def reverse_one(string)
  len = string.length

  (len / 2).times do |index|
    string[-1 - index], string[index] = string[index] , string[-1 - index]
  end

  return string
end

def reverse_two(string)
  return string.split("").reverse.join("")
end

puts "~~~~~FIRST IMPLEMENTATION~~~~~"
puts Benchmark.measure {reverse_one 'ambreen'}
puts Benchmark.measure {reverse_one 'hello how are you'}
puts "~~~~~SECOND IMPLEMENTATION~~~~~"
puts Benchmark.measure {reverse_two 'ambreen'}
puts Benchmark.measure {reverse_two 'hello how are you'}