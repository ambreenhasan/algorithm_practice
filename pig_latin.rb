def pig_latin_of string
  string_array = string.chars

  if !(string_array[0] =~ /[aeiou]/)
    p string_array.rotate.join("") << "ay"
  end
end

pig_latin_of "tasneem"