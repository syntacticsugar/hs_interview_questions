# merge sort

# helper function
# Array[Num] -> Array[Array[Num]]
def halve array
  middle = (array / 2.0).round
  left = array[0..middle]
  right = array[middle..last]
  return [left, right] #explicit return for clarity
end

# Array[Num], Array[Num] -> Array[Num]
def merge (left, right)
end


# recurse! :D
# Array[Num] -> Array[Num]
def merge_sort array
end
