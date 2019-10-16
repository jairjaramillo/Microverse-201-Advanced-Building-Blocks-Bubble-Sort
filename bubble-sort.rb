def bubble_sort(array)
  # check the array is already sorted, if true, return array
  # loop and sort the first time,
  # check if the array is sorted correctly i.e as expected using recursion
  # if it is not, sort again and check if it is sorted correctly as exected

  (array.size - 1).times do |x|
    array[x], array[x + 1] = array[x + 1], array[x] if array[x] > array[x + 1]
  end
  (array.size - 1).times do |x|
    bubble_sort(array) if array[x] > array[x + 1]
  end
  # sort_check.call array
  array
end

test_array = [4, 3, 78, 2, 0, 2]
print bubble_sort(test_array)
puts

def bubble_sort_by(arra)
  (arra.size - 1).times do |x|
    if yield(arra[x], arra[x + 1]).positive? # yield = left.length - right.length
      arra[x], arra[x + 1] = arra[x + 1], arra[x]
    end
    (arra.size - 1).times do
      if arra[x].length - arra[x + 1].length < 0
        puts 'test'
        bubble_sort_by(arra) do |left, right|
          yield(arra[x], arra[x + 1])
        end
      end
    end
  end
  arra
end

test = bubble_sort_by(["hello", "hey", "hi"]) do |left, right|
  left.length - right.length
end
# ["hi", "hey", "hello"]
# ["hey", "hi", "hello"]

print test
puts
