// merge sort, in javascript
// mergeSort takes AND returns one array.  the 'merge/recombine' function takes two SORTED halves, and recombines into 1 array.

// Array[Num] -> Array[Num]
function mergeSort(array) {
  // base case
  if (array.length < 2) { return array; }

  else {
    var left, right, middle, sortedLeft, sortedRight;

    middle = Math.floor(array.length/2);
    left = array.slice(0,middle);
    right = array.slice(middle,array.length);
    console.log("left is " + left);
    console.log("right is " + right);

    // recursion:
    sortedLeft = mergeSort(left);
    sortedRight = mergeSort(right);
    console.log("sortedLeft is " + sortedLeft);
    console.log("sortedRight is " + sortedRight);

    // merge:
    function merge(left,right) {
      var winners = [];
      // holy mackerel! FUCKING LOGIC, man!
      // the || or "or" doesn't fly! it HAS to be && because of logic stuff!
      // can't believe i forgot my LSAT logic.  oh wellz.  now i know.
      while (left.length>0 && right.length>0) {
        if (left[0]<right[0]) {
          winners.push(left.shift());
        }else if (right[0]<left[0]) {
          winners.push(right.shift());
        }
      } // end of 'while' loop

      // put this OUTSIDE the else loop!! :D
      return winners.concat(left).concat(right);
    }

    return merge(sortedLeft, sortedRight);
  }
}
