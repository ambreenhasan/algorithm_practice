require 'benchmark'

# Input: "ambreen"
# Output: "neerbma"
# create a method that will take one argument
# iterate over the array and swap the last index with
# the first index

def reverse_one(string)
  len = string.length

  (len / 2).times do |letter|
    string[-1 - letter], string[letter] = string[letter] , string[-1 - letter]
  end

  return string
end

def reverse_two(string)
  puts string.split("").reverse.join("")
end

puts Benchmark


p reverse_one 'ambreen'
p reverse_two 'hello how are you'
