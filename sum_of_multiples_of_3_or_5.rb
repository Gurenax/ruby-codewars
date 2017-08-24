def find(n)
    sum = 0
    n.downto(3) { |num|
        if num%3==0 || num%5==0
            sum += num
        end
    }
    sum
end

puts find(5)#, 8)
puts find(10)#, 33)

#Best practice:
# def find(n)
#     (3..n).select { |x| (x % 3).zero? || (x % 5).zero? }.reduce(0, :+)
#   end