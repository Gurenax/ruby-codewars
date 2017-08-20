def add(a,b)
    a.sub!(/^00/, "")
    b.sub!(/^00/, "")
    arr_a = a.split('')
    arr_b = b.split('')
    result = []

    unshifts = arr_a.length - arr_b.length
    if unshifts >= 0
        unshifts.times { arr_b.unshift(0) }
    else
        unshifts *= -1
        unshifts.times { arr_a.unshift(0) }
    end
    position = arr_a.length-1
    
    while position >= 0
        result << Integer(arr_a[position]) + Integer(arr_b[position])
        position -= 1
    end
    result.reverse!
    puts arr_a.join(',')
    puts arr_b.join(',')
    puts "----"
    puts result.join(',')
    puts "----"
    if (result.include? 2) || (result.include? 3)
        i = result.length-1
        while i>=0
            if i!=0
                if result[i] == 1 || result[i] == 0
                    #i -= 1
                else
                    if result[i] == 2
                        result[i] = 0
                        result[i-1] +=1
                    elsif result[i] == 3
                        result[i] = 1
                        result[i-1] +=1
                    end
                end
            else
                if result[i] == 2
                    result[i] = 0
                    result.unshift(1)
                elsif result[i] == 3
                    result[i] = 1
                    result.unshift(1)
                end
            end
            i -= 1
            
            puts result.join(',')
            puts "----"
        end
        
    end
    
    if result.join("") == "0"
        return "0"
    else
        return result.join("").sub!(/^[0]*/, "")
    end
end
# 1
# 111
# 010
# 001

    # if arr_a[position]=="1" && arr_b[position]=="1"
    #     result << 0
    #     carry = 1
    # else
    #     if (arr_a[position].to_i + arr_b[position].to_i) > 1
    #         result << 0
    #         carry = 1
    #     else
    #         result << arr_a[position].to_i + arr_b[position].to_i
    #     end
    # end

#    puts add('111','111')#,'1110')

#puts add('111','10')#,'1001')
# puts add('1101','101')#,'10010')
# puts add('1101','10111')#,'100100')
# puts add('10111','001010101')#,'1101100')
 puts add('00','0')#,'0')

#puts add('0001011','0101100001001001100001001')


# http://www.binarymath.info/addition-subtraction.php
# 0 + 0 = 0
# 0 + 1 = 1
# 1 + 0 = 1
# 1 + 1 = 10

#puts add('000101001100000111101010010010010111000000010111100011111', '11000000011101011011000101011110000010101000000000')


# Best Practice
# def add(a,b)
#     (Integer("0b"+a)+Integer("0b"+b)).to_s(2)
#   end