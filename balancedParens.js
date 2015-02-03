function balancedParens(str) {
  var stack = [];
  var open = {"(": true, "[": true, "{": true};
  var closed = {"(": ")", "[": "]", "{": "}"};
  if (str.length == 0) return true;

  for (var i = 0; i < str.length; i++) {
    var chr = str[i]

    if (open[chr]) {
      stack.push(chr);
    } else if (closed[stack.pop()] !== chr) {
      return false;
    }
  };

  return stack.length === 0;
};

console.log(balancedParens("")); // true
console.log(balancedParens("(")); // false
console.log(balancedParens("()")); // true
console.log(balancedParens("([])")); // true
console.log(balancedParens("([}")); // false
console.log(balancedParens("{}")); // true
console.log(balancedParens("({[]})")); // true
console.log(balancedParens("({[]")); // false
