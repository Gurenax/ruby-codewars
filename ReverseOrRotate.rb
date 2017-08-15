def revrot(str, sz)
    return "" if sz <= 0 || str.empty? || sz > str.length
    result = ''
    numbers_string = str.scan(/.{#{sz}}/)
    numbers_string.each do |number| 
      if number.length < sz
        result << number
      elsif sum_of_cubes_of_each_digit(number) % 1 == 0 # Check if integer
        result << number.reverse
      else
        result << shift_characters_to_left(number).to_s
      end
    end
    result
end

def sum_of_cubes_of_each_digit(number)
  sum = 0.0
  number_chars = number.split('')
  number_chars.each do |number_char|
    sum = sum + number_char.to_f
  end
  ((sum * sum * sum) / 2)
end

def shift_characters_to_left(str)
  s = str[0]
  str[0] = ''
  str << s
  str
end

puts revrot("123456987654", 6) #--> "234561876549"
puts revrot("123456987653", 6) #--> "234561356789"

puts revrot("66443875", 4) #--> "4466 8753"
puts revrot("66443875", 8) #--> "64438756"

puts revrot("664438769", 8) #--> "67834466"
puts revrot("123456779", 8) #--> "23456771"
puts revrot("", 8) #--> ""
puts revrot("123456779", 0) #--> "" 
puts revrot("563000655734469485", 4) #--> "0365065073456944"

