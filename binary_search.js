function binarySearch(array, searchElement) {
  // sort the array
  sortedArray = array.sort(function(a, b){
    return a - b;
  });

  var minIndex = 0;
  var maxIndex = sortedArray.length - 1;
  var currentIndex;
  var currentElement;

  while (minIndex <= maxIndex) {
    currentIndex = Math.floor((minIndex + maxIndex) / 2);
    currentElement = sortedArray[currentIndex]


    if (currentElement < searchElement) {
      minIndex = currentIndex + 1;
    } else if (currentElement > searchElement) {
      maxIndex = currentIndex - 1;
    } else {
      return currentIndex;
    }
  }
  return -1;
}

unsorted_array = [5, 3, 9, 10, 4, 1];
unsorted_array_dups = [5, 5, 5, 8, 9, 10, 10, 1, 1];
binarySearch(unsorted_array, 3)
// binarySearch(unsorted_array, 1)
// binarySearch(unsorted_array, 10)