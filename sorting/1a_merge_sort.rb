# create merge sort

array = (1..10).to_a.shuffle

# helper
def halve array
  mid = (array.length/2.0-1)
  left = array[0..mid]
  right = array[mid..(array.length)]
  [left,right]
end

left, right = halve(array)
# [[8, 2, 9, 6, 7], [7, 1, 4, 3, 5, 10]]
# left = [8, 2, 9, 6, 7]
# [7, 1, 4, 3, 5, 10]


# written Wed Jul 17, before s-e-x in Bensonhurst.
# definitely a brainless way, before i even thought
# about what merge sort actually is.
def merge_sort array
  left, right = halve(array)

  sorted = []

  left.each do |l|
    right.each do |r|
      if l < r
        sorted << l
      else
        sorted << r
      end
    end
  end
  sorted
end






