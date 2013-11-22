# merge sort

# Array[Num] -> Array[Array[Num]]
# helper method, returns 2 unsorted halves
def halve array
  middle = (array.size / 2.0).round
  left = array[0..middle]
  right = array[middle..(array.size)]
  return [left,right] # explicit return for clarity :P
end

# Array -> Array
# returns one sorted array from 2 unsorted halves
def recombine (halved)
  left = halved.first
  right = halved.last
  sorted = []



end

def merge_sort array
end
