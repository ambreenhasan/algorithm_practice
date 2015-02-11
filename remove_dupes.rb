def remove_dupes(input)
 return input.split("").uniq.join("")
end

def remove_dupes_part_2(input)
  word_array = []

  # split the array
  input.each_char { |i| word_array << i }

  # find the uniq values
  word_counter = Hash.new(0)
  word_array.select! do |ele|
    word_counter[ele] += 1
    word_counter[ele] == 1
  end

  # join the array
  final_result = ""
  word_array.each {|letter| final_result << letter}

  final_result
end

# puts remove_dupes("google")
# puts remove_dupes("ambreen")

p remove_dupes_part_2("google") == "gole"
p remove_dupes_part_2("ambreen") == "ambren"