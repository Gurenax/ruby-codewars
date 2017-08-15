def count_bits(number)
    number.to_s(2).chars.count("1")
end

puts count_bits(1234) # 4
puts count_bits(0) #, 0
puts count_bits(4) #, 1
puts count_bits(7) #, 3
puts count_bits(9) #, 2
puts count_bits(10) #, 2


# Best practice
# def count_bits(n)
#   n.to_s(2).count "1"
# end