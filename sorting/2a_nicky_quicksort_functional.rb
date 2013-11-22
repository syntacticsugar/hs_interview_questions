def quicksort1 list
  if list.length <= 1
    list
  else
    # bicky says shuffle is a linear asymptote,
    # each call is O(n)
    # overall algorithm is O(n * log(n))
    pivot = list.shuffle.first
    lower = list.select { |x| x < pivot }
    equal = list.select { |x| x == pivot}
    upper = list.select { |x| x > pivot }
    quicksort1(lower) + equal + quicksort1(upper)
  end
end

def quicksort2 list
  if list.length <= 1
    list
  else
    pivot = list.shift
    lower = list.select { |x| x < pivot }
    upper = list.select { |x| x >= pivot }
    quicksort2(lower) + [pivot] + quicksort2(upper)
  end
end

# from bil bas.
# much more eloquent and pretty.
module Enumerable
  def quicksort
    if size <= 1
      self
    else
      pivot = shift
      lower, greater = partition { |x| x < pivot }.map(&:quicksort)
      lower.push(pivot).concat(greater)
    end
  end
end
