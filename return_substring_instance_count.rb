def solution(full_text, search_text)
    full_text.scan(/(#{search_text})/).length
end

puts solution('abcdeb','b')
puts solution('abcdeb', 'a')
puts solution('abbc', 'bb')