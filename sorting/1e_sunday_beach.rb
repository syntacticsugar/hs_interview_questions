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
def quadruplet_recombine array
  left, right = halve(array)

  # ternary
  left_sorted = left.first > left.last ? [left.last, left.first] : left
  right_sorted = right.first > right.last ? [right.last, right.first] : right

  sorted = left_sorted[0] < right_sorted [0] ? [left_sorted,right_sorted] : [right_sorted,left_sorted]

  sorted.flatten
end

def old_recombine array
  left, right = halve(array)

  if left.first > left.last
    left_sorted = left
  elsif left.last > left.first
    left_sorted = [left.last, left.first]
  end

  if right.first > right.last
    right_sorted = right
  elsif right.last > right.first
    right_sorted = [right.last, right.first]
  end
  sorted = [left_sorted,right_sorted].flatten
end

def merge_sort array

end
