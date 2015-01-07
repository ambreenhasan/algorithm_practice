def shuffle_me(array)
   # (array.size).times do |i|
   #   j = rand(array.size-1)
   #   array[i], array[j] = array[j], array[i]
   # end

   # p array

   counter = array.length

    while (counter > 0)
      index = rand(counter)

      counter -= counter

      temp = array[counter]
      array[counter] = array[index]
      array[index] = temp;
    end

    p array


 end



 shuffle_me [1, 2, 3, 4, 10, 85, 75, 99]