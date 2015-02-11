// Create a JavaScript function called removeDupes that takes a string, removes all of the duplicate letters, then returns the resulting string. What is the time and space complexity of your algorithm?



function removeDupes(input) {
 var unique = input.split("").filter(function(letter,index,allLetters){
    return index == allLetters.indexOf(letter);
  }).join("");

 return unique;
}




console.log(removeDupes("google"));
console.log(removeDupes("ambreen"));
console.log(removeDupes("hello how are you"))
