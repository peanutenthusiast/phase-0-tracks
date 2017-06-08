# arr = [42, 89, 23, 1]

# def search_array(arr, num)
#   i = 0
#   if arr.include?(num) == false
#     return nil
#   end
#   arr.each do |n|
#     if n != num
#       i += 1
#     else
#       p i
#     end
#   end
# end

# search_array(arr, 1)
# p search_array(arr, 5)
# p search_array(arr, 89)

# fib_array = []

# def fibonacci(n)
#   if n == 1
#     return 0
#   elsif n == 2
#     return 1
#   elsif n > 2
#    fibonacci(n - 1) + fibonacci(n - 2)
#   end
# end

# #f = 1
# #n = 100
# #while f <= n 
# #  fib_array << fibonacci(f)
# #  f += 1
# #end

# #p fib_array


# puts fibonacci(30)

#Loop through the array with .each_index {}
#.each_with_index { |val,index| puts "index: #{index} for #{val}" if val < 30}
#  index: 0 for 11
#compare the first index with the next index
#swap if the first index is greater than the other [i] > [i+1] [i] == [i+1]
#loop through it again until it can no longer loop
array = [16, 4, 49, 64, 244, 216, 81]
def bubble_sort(array)
  i = 1
  while i <= array.length
    array.each_with_index do |val, idx|
      if array[idx +1] == nil
        break
      elsif array[idx] > array[idx + 1]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
      else
        next
      end
    end
    i += 1
  end
  p array
end

bubble_sort(array)

