# In the following 6 digit number:

# 283910
# 91 is the greatest sequence of 2 digits.

# Complete the solution so that it returns the largest five digit number
# found within the number given.. The number will be passed in as a string
# of only digits. It should return a five digit integer. The number passed
# may be as large as 1000 digits.

def solution(digits)
    max_digits = 5 # How many digits
    digits_length = digits.to_s.length
    if digits_length < max_digits
        return digits
    end
    x=0
    y=x+max_digits   # Position end of string to 5th digit
    largest_number = 0
    while y<= digits_length
        str_digits = substring(digits.to_s, x, max_digits) # Get substring of string from position x with length max_digits
        x+=1
        y+=1
        current_value = str_digits.join.to_i 
        if current_value > largest_number
            largest_number = str_digits.join.to_i
        end
    end
    largest_number
end

# Get substring of string from position x with lenght y
def substring(string, position, length)
    string_array = string.chars
    string_array[position..position+length-1]
end

puts solution(283910)
puts solution(91234567890)


#Best practice
# def solution(digits)
#     digits.split('').each_cons(5).max.join.to_i
#   end