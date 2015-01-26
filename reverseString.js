var Benchmark = require("benchmark");
// create a function
// input a string "ambreen", output: "neerbma"
// iterate over half of the size of the array
// swap the first and last elements
// strings are immutable in Javascript


function reverseOne(string) {
  var o = '';
  for (var i = string.length - 1; i >= 0; i--) {
    o += string[i];
  };
  return o;
};

function reverseTwo(string) {
  return string.split("").reverse().join("")
}

var suite = new Benchmark.Suite;

suite.add("Reverse String Test One", function(){
  reverseOne("ambreen");
})
.add("Reverse String Test Two", function(){
  reverseTwo("ambreen");
})
.on('cycle', function(event){
  console.log(String(event.target))
})
.on('complete', function(){
  console.log("Fastest is " + this.filter("fastest").pluck("name"));
})
.run({async: true});

// suite.add("Reverse String Test: Longer String 1", function(){
//   reverseOne("hello how are you");
// })
// .add("Reverse String Test: Longer String 2", function(){
//   reverseTwo("hello how are you");
// })
// .on('cycle', function(event){
//   console.log(String(event.target))
// })
// .on('complete', function(){
//   console.log("Fastest is " + this.filter("fastest").pluck("name"));
// })
// .run({async: true});

