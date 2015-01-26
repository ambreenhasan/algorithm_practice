def unique_characters_in_a_string(string)
  counts = {}

  string.downcase.each_char do |char|
    next if char == " "
    counts[char] = 0 unless counts.include?(char)
    counts[char] += 1
  end
  counts
end

string = "ambreen"
new_string = "hello how are you"

unique_characters_in_a_string string
unique_characters_in_a_string new_string
