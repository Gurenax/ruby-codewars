def iq_test(numbers)
    arr_numbers = numbers.split(' ')
    arr = []
    arr_numbers.map { |n|
        n.to_i % 2 == 0 ? arr << "even" : arr << "odd"
    }
    arr.count("even") > 1 ? arr.find_index("odd")+1 : arr.find_index("even")+1
end

puts iq_test("2 4 7 8 10")#,3)
puts iq_test("1 2 2")#, 1)

#Best practice:
# def iq_test(numbers)
#     nums = numbers.split.map(&:to_i).map(&:even?)
#     nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
#   end