def solution(str, ending)
    str.scan(/(#{ending})$/).length>0
end

puts solution('abc', 'bc') # returns true
puts solution('abc', 'd') # returns false
puts solution('samurai', 'ai')