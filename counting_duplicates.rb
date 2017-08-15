def duplicate_count(text)
    char_occurrences = {}
    text.chars.map { |c|
        if char_occurrences.has_key? c.to_s.downcase.to_sym
            char_occurrences[c.to_s.downcase.to_sym] += 1
        else
            char_occurrences[c.to_s.downcase.to_sym] = 1
        end
    }
    char_occurrences.select{|k,v| v > 1}.size   
end

puts duplicate_count("aabbcde") #2
puts duplicate_count("") #, 0)
puts duplicate_count("abcde") #, 0)
puts duplicate_count("abcdeaa") #, 1)
puts duplicate_count("abcdeaB") #, 2)
puts duplicate_count("Indivisibilities") #, 2)


# Best practice
# def duplicate_count(text)
#     ('a'..'z').count { |c| text.downcase.count(c) > 1 }
# end

# def duplicate_count(text)
#   arr = text.downcase.split("")
#   arr.uniq.count { |n| arr.count(n) > 1 }
# end