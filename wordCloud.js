function wordCloud(sentence) {

  sentence = sentence.replace(/[\.,-\/#!?$%\^&\*;:{}=\-_`~()]/g,"");

  sentence = sentence.replace(/\s{2,}/g,"");

  var newSentence = sentence.toLowerCase().split(" ");

  var word_count = {};

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