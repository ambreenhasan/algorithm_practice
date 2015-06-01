def most_occuring_word(sentence)
  # punctuation array to account for punctuation
  # gsub all puncuation for empty ""
  # downcase sentence string and convert into split array
  # create a Hash and default to 0
  # iterate over sentence array and add key as each word and use value as counter for frequency of word
  # iterate over hash and find max based on value, add keys to a new array
  # return new array with most occuring word(s)


  punctuation = ["?", ".", ",", "!", ";"]

  downcased_sentence = sentence.downcase

  punctuation.each { |punc| downcased_sentence.gsub!(punc, "") }

  downcased_sentence_array = downcased_sentence.split(" ")

  frequency_counter = Hash.new(0)

  downcased_sentence_array.each { |word| frequency_counter[word] += 1 }

  occurring_words = []

  frequency_counter.each { |k, v| occurring_words << k if v == frequency_counter.values.max }

  occurring_words
end


sentence_one = "How much wood would a wood chuck chuck if a wood chuck could chuck wood?"
sentence_two = "That that exists exists in that that that that exists exists in."
sentence_three = "Time times time times time squared equals time times time times time times time."
sentence_four = "Who polices the police? Police police police police. Who polices the police police? Police police police police police police"

p most_occuring_word(sentence_one)
p most_occuring_word(sentence_two)
p most_occuring_word(sentence_three)
p most_occuring_word(sentence_four)
