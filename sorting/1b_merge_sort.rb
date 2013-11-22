# merge sort, revisited
# array = [8, 2, 9, 6, 7, 1, 4, 3, 5, 10]

def halve array
  middle = (array.length / 2.0).round
  left = [0..middle]
  right = [middle..(array.last)]
  [left,right]
end

def merge (left,right)
  i,j = 0
  sorted = []

  while ( i<left.length || i<right.length)
    if i == left.length
      sorted  << right[j]
      j = j + 1
    elsif j == right.length or left[i] < right[j]
      sorted << left[i]
      i = i + 1
    else
      sorted << right[j]
      j = j + 1
    end
  end
end

def merge_sort array
  left,right = halve(array)
end



