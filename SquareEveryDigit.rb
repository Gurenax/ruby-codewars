#Returns the squared value of each digit in a number
def square_digits num
  squared_num = ""
  num.to_s.chars.map(&:to_i).each { |digit|
  	digit *= digit
  	squared_num += digit.to_s
  }
  squared_num.to_i
end

puts square_digits(9119)

#Test.assert_equals(square_digits(3212), 9414)
#Test.assert_equals(square_digits(2112), 4114)
#Test.assert_equals(square_digits(1111), 1111)
#Test.assert_equals(square_digits(1234321), 14916941)
#Test.assert_equals(square_digits(0), 0)

# Best practice code below
=begin
def square_digits num
  # code goes here
  num.to_s.chars.map{|x| x.to_i**2}.join.to_i
end
=end