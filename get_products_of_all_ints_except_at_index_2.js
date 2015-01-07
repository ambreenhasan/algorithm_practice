// var find_product = function(arr) {

//   var prod_array = [];
//   var product = 1;

//   for (var i = 0; i < arr.length; i++) {
//     product = 1;
//     for (var j = 0; j < arr.length; j++) {
//       if (i != j) {
//         product = product * arr[j];
//       }
//     };
//     prod_array[i] = product;
//   };
//   console.log(prod_array);
// }


// ==============

var multiplty_all = function(arr) {
  var result = 1;
  for (var i = 0; i < arr.length; i++) {
    result = result * arr[i];
  };
  return result;
}

var findProduct = function (arr) {
  var finalProd = [];
  var beforeIndex = [];
  var afterIndex = [];

  for (var i = 0; i < arr.length; i++) {
    afterIndex = arr.slice(i + 1, arr.length);
    beforeIndex = arr.slice(0, i);
    console.log("Before index: " + beforeIndex);
    console.log("After index:" + afterIndex)
    product = multiplty_all(beforeIndex) * multiplty_all(afterIndex);
    finalProd[i] = product;

  };
  console.log(finalProd)
}

var arr = [1, 3, 4, 7];
findProduct(arr)
