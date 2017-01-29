class BubbleSort
  def sort(array)
    iterations = array.length   #the number of elements in the array
    loop do                     #loop that repeats passes on the array until it is sorted
      swap = false              #swap is set to false if at the beginning of each loop
      (iterations - 1).times do |previous|    #this block passes over each element in the array and compares it to the next one. |previous| counts up from zero and is assigned to the previous index
        if array[previous] > array[previous + 1]    #comparison of previous element and current element
          array[previous], array[previous + 1] = array[previous + 1], array[previous]  #simultaneous swap of elements if comparison was true.  Sets swap to true.
          swap = true     #since swap has occurred, swap is set to true.  Block continues
        end
      end
      if swap == false  #if no swaps occur then swap remains false and the loop breaks.
        break
      end
    end
    array             #the newly sorted array after the loop ends.
  end
end

sorter = BubbleSort.new                        #creates an iteration of the BubbleSort class called 'sorter'
print sorter.sort(["d", "b", "a", "c"])        #calls the method 'sort' from within the instance of the BubbleSort class on the array.


      # evaluate each item in the collection to see if it is greater than or less than 
      # the one after it
        # each item that is being evaluated is in the "previous" position
        # and the current position is the item directly after it (previous[index + 1])
        # if the current position is less than the previous position, swap places
          # insert the current position into the position of the previous position
          # set swap to false

        # if swap remaines false end loop