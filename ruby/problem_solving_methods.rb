arr = [42, 89, 23, 1]

def search_array(arr, num)
  i = 0
  if arr.include?(num) == false
    return nil
  end
  arr.each do |n|
    if n != num
      i += 1
    else
      p i
    end
  end
end

search_array(arr, 1)
p search_array(arr, 5)
p search_array(arr, 89)