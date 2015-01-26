# Input: "ambreen"
# Output: "neerbma"
# create a method that will take one argument
# iterate over the array and swap the last index with
# the first index

def reverse(string)
  len = string.length

  (len / 2).times do |letter|
    string[-1 - letter], string[letter] = string[letter] , string[-1 - letter]
  end

  return string
end


p reverse 'ambreen'
p reverse 'hello how are you'
