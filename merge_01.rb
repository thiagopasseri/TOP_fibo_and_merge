def merge_sort(arr)
  n = arr.length
  if n == 1
    return arr
  end
  half = (n/2).to_i  
  merge(merge_sort(arr[0,half]), merge_sort(arr[half...]))
end

def merge(arr1, arr2)
  n1 = arr1.length
  n2 = arr2.length
  arr = []
  i = 0
  j = 0
  while(i + j < n1 + n2)
    if (i <= n1 - 1) && (j <= n2 - 1)
      if arr1[i] <= arr2[j]
        arr << arr1[i]
        i += 1
      else
        arr << arr2[j]
        j += 1
      end
    elsif !(i <= n1 - 1)
      arr += arr2[j...]
      break
    elsif !(j <= n2 - 1)
      arr += arr1[i...]
      break
    end
  end
  arr
end

# x = [3,5,6,7,8,9]
# y = [2,3,5, 6,9,12]
# x = [4]
# y = [5]
z = [3, 2, 1,7,1,10,0,12, 13, 8, 5, 0, 1]
p merge_sort(z)
# p merge(x,y)