def merge_sort(arr)
  if arr.length < 2
    return arr
  end
  middle = arr.length/2
  puts "left: #{arr[0, middle]} - right: #{arr[middle...]}"

  left_half = merge_sort(arr[0, middle])
  right_half = merge_sort(arr[middle...])

  #merging the two arrays
  sorted_arr = []
  i = 0
  j = 0
  until (left_half.empty? || right_half.empty?)
    # puts "left: #{left_half} - right: #{right_half}"
    if left_half[0] <= right_half[0]
      sorted_arr << left_half.shift
    else
      sorted_arr << right_half.shift
    end
  end
  sorted_arr += (left_half + right_half)
end

z = [3, 2, 1,7,1,10,0,12, 13, 8, 5, 0, 1]


p merge_sort(z)