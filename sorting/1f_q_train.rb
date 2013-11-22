# merge sort
#
#
# helper function
# Array[Num] -> Array[Array[Num]]
def halve array
  middle = (array.size / 2.0).round - 1
  left = array[0..middle]
  right = array[(middle+1)..(array.last)]
  [left,right]
end

# Array[Num] -> Array[Num]
# goal: take an array like [90,80,70,60,50,40,30]
# and return [30, 40, 50, 60, 70, 80, 90]
def sort_two array
  return array if array.length < 2 || array.first < array.last || array.first == array.last
  if array.first > array.last
    [array.last,array.first]
  end
end

def recombine_sorted (sorted_left, sorted_right)
  # ex [2,6] [4,5]
  sorted_left
end

def merge_sort array

  if array.length <= 2
    sort_two array
  else
    left,right = halve array
    left_sorted = merge_sort(left)
    right_sorted = merge_sort(right)
    left_sorted.concat(right_sorted)
  end
end
