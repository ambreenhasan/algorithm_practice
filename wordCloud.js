function wordCloud(sentence) {
  puncuation = [".", ",", "/", "?", "!", "'", "(", ")"];

  puncuation.forEach(function(value, index){
    sentence = sentence.replace(value, "")
  });

  newSentence = sentence.toLowerCase().split(" ");

  word_count = {};

  for (var i = 0; i < newSentence.length; i++) {
    word_count[newSentence[i]] = 0
  };

  for (var i = 0; i < newSentence.length; i++) {
    word_count[newSentence[i]] += 1
  };

  console.log(word_count);
}

wordCloud("Hello. Hello. How are are you you, today?");

// this code is really, really ugly.