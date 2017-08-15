def zeros(n)
    return 0 if n.zero?
    k = (Math.log(n)/Math.log(5)).to_i
    m = 5**k
    n*(m-1)/(4*m)
end

# Best Practice
# def zeros(n)
#     n < 5 ? 0 : (n / 5) + zeros(n / 5)
# end

puts zeros(12)
puts zeros(100)
puts zeros(1000)
puts zeros(10000)
puts zeros(100000)