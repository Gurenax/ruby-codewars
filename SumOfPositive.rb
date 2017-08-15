# Returns sum of positive numbers in an array
def positive_sum(arr)
  sum = 0
  unless arr.empty?
  	arr.each{ |x|
  		sum += x if x>0
  	}
  end
  sum
end



puts positive_sum([1,-4,7,12]) #=> 1 + 7 + 12 = 20
puts positive_sum([]) #=> 0
puts positive_sum([-1,-2,-3,-4]) #=> 0
puts positive_sum([1,2,3,4,5]) #=> 15
puts positive_sum([1,-2,3,4,5]) #=> 13
puts positive_sum([-1,2,3,4,-5]) #=> 9
puts positive_sum([-1,-2,-3,-4,-5,-6,-7,-8,-9]) #=> 0


## Best Practice below
=begin
def positive_sum(arr)
  arr.select{|x| x > 0}.reduce(0, :+)
end
=end