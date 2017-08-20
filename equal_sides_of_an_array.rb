def find_even_index(arr)
    sum_left = 0
    sum_right = 0
    position = 0
    arr.each_with_index { |n, i|
        if i>0
            sum_left = sum_of_array(arr,0,i-1) #arr[0..i-1].sum
        else
            sum_left = 0
        end

        if i<arr.length-1
            sum_right = sum_of_array(arr,i+1,arr.length-1) #arr[i+1..arr.length-1].sum
        else
            sum_right = 0
        end

        if sum_left==sum_right
            return i
        elsif i==arr.length-1
            return -1
        end
    }
end

def sum_of_array(arr, from, to)
    sum = 0
    arr[from..to].each { |x|
        sum += x
    }
    sum
end

puts find_even_index([1,2,3,4,3,2,1])#,3)
puts find_even_index([1,100,50,-51,1,1])#,1,)
puts find_even_index([1,2,3,4,5,6])#,-1)
puts find_even_index([20,10,30,10,10,15,35])#,3)
puts find_even_index([20,10,-80,10,10,15,35])#,0)
puts find_even_index([10,-80,10,10,15,35,20])#,6)
puts find_even_index(Array(1..100))#,-1)
puts find_even_index([0,0,0,0,0])#,0,"Should pick the first index if more cases are valid")
puts find_even_index([-1,-2,-3,-4,-3,-2,-1])#,3)
puts find_even_index(Array(-100..-1))#,-1)

puts find_even_index([2, 3, 4, 3, 2, 1])


# Best practice
# def find_even_index(arr)
#     left_sum = 0
#     right_sum = arr.reduce(:+)
    
#     arr.each_with_index do |e, ind|
#       right_sum -= e
      
#       return ind if left_sum == right_sum
  
#       left_sum += e
#     end
    
#     -1  
#   end