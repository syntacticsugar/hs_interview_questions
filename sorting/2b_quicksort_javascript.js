function quicksort(list) {
  if (list.length <= 1) {
    return list;
  }
  else {
    var pivot = list.shift();
    var lower = list.filter(function(element) {
      return element < pivot;
    });
    var upper = list.filter(function(element) {
      return element > pivot;
    });
    lower.push(pivot) //.concat(upper);
    return quicksort(lower).concat(quicksort(upper));
  }
}


// tests
// arrayFromRange(4,9);  => [4,5,6,7,8,9]
function arrayFromRange(low,high) {
  var array = [];
  for (var i=low; i<high+1; i++) {
    array.push(i);
  }
  return array;
}

// shuffle, courtesy of Fisher-Yates
function shuffle(array) {
  var counter = array.length, temp, index;

  // While there are elements in the array
  while (counter--) {
    // Pick a random index
    index = (Math.random() * counter) | 0;

    // and swap the last element w/ it
    temp = array[counter];
    array[counter] = array[index];
    array[index] = temp;
  }
  return array;
}
