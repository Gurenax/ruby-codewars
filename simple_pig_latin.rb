# Move the first letter of each word to the end of it, then add 'ay' to the end of the word.

def pig_it(string)
    string.split(' ').map { |s|
        if s.match(/^[[:alpha:]]+$/)    # Test if string is alpha numeric
            shift_characters_to_left(s) + "ay"
        else                            # Otherwise do nothing to the string
            s
        end
}.join(' ')
end

def shift_characters_to_left(str)
    s = str[0]
    str[0] = ''
    str << s
end

puts pig_it('Pig latin is cool') # igPay atinlay siay oolcay
puts pig_it('O tempora o mores !') # "Oay emporatay oay oresmay !"


#Best practice
# def pig_it text
#     text.gsub(/(\w)(\w+)*/, '\2\1ay')
# end