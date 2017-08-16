def first_non_repeating_letter(s) 
    s.chars.map { |c|
        return c if s.downcase.count(c.downcase)==1
    }
    ''
end

puts first_non_repeating_letter('a')#, 'a')
puts first_non_repeating_letter('stress')#, 't')
puts first_non_repeating_letter('moonmen')#, 'e')
puts first_non_repeating_letter('')#, '')
puts first_non_repeating_letter('nNA')#, '')

# Best Practice:
# def  first_non_repeating_letter(s) 
#   s.chars.find {|i| s.downcase.count(i)==1 || s.upcase.count(i)==1} || ""
# end