# scenerios: sentence with puncuation, gsub with space
# then split the puncuation into a downcase array
# create a new hash
# iterate over each word and add 1 to each character based
# on how many times it shows up


def word_cloud(sentence)

  puncuation = %w(, . / ( ) ' ' " " ; !)

  puncuation.each {|punc| sentence = sentence.gsub(punc,"")}

  sentence = sentence.downcase.split(" ")

  word_count = Hash.new(0)
  sentence.each do |word|
    word_count[word] += 1
  end

  p word_count

end

word_cloud "Hello. Hello. What a fine day, today."