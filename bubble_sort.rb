class BubbleSort
  def sort(array)
    iterations = array.length
    loop do
      swap = false
      (iterations - 1).times do |previous|
        if array[previous] > array[previous + 1]
          array[previous], array[previous + 1] = array[previous + 1], array[previous]
          swap = true
        end
      end
      if swap == false
        break
      end
    end
    array
  end
end

sorter = BubbleSort.new
print sorter.sort(["d", "b", "a", "c"])
