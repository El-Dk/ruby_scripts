# frozen_string_literal: true

def bubble_sort(array)
  last_item = array.length - 1
  loop do
    swapped = false
    (0..(last_item - 1)).each do |i|
      next unless array[i] > array[i + 1]

      aux = array[i]
      array[i] = array[i + 1]
      array[i + 1] = aux
      swapped = true
    end
    last_item -= 1
    break unless swapped
  end
  array
end

p bubble_sort([100, 4, 3, 78, 2, 17, 0, 2, 455, -1])
