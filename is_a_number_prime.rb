def isPrime(n)
    if n <= 1
        return false
    elsif n <= 3
        return true
    elsif n%2==0 or n%3==0
        return false
    else
        i = 5
        while (i * i) <= n
            if n%i==0 or n % (i+2)==0
                return false
            end
            i = i + 6
        end
    end
    true
end

puts isPrime(6) # false

puts isPrime(2) # true
puts isPrime(4) # false
puts isPrime(11) # true

# Lazy Solution - Best Practice
# require 'prime'
# def isPrime(num)
#   num.prime?
# end

# Genius way to do it
# def isPrime(num)
#     return false if num < 2
#     (2...num).to_a.select{|x| num%x == 0}.compact.empty?
# end