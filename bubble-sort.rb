def bubble_sort(array)
  # check the array is already sorted, if true, return array
  # loop and sort the first time,
  # check if the array is sorted correctly i.e as expected
  # if it is not, sort again using recursion and check if it is sorted correctly as exected

  (array.size - 1).times do |x|
    array[x], array[x + 1] = array[x + 1], array[x] if array[x] > array[x + 1]
  end
  (array.size - 1).times do |x|
    bubble_sort(array) if array[x] > array[x + 1]
  end
  array
end


def bubble_sort_by(array)
  (array.size - 1).times do |x|
    if yield(array[x], array[x + 1]).positive? # yield = left.length - right.length
      array[x], array[x + 1] = array[x + 1], array[x]
    end
  end
  (arra.size - 1).times do |x|
    if array[x].length - array[x + 1].length > 0
      bubble_sort_by(array) do |left, right|
        yield(array[x], array[x + 1])
      end
    end
  end
  array
end
