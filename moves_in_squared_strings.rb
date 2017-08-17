#rot=1
#selfie_and_rot=2

def rot(strng)
    strng.reverse
end
def selfie_and_rot(strng)
    new_string = ""
    array_string = strng.split("\n")
    array_string.each { |s|
        new_string << s
        s.length.times { new_string << "."}
        new_string << "\n"
    }
    new_string.strip+rot(new_string)
end
def oper(fct, s) 
    case fct.name
        when :rot
            rot(s)
        when :selfie_and_rot
            selfie_and_rot(s)
    end
end

#s = "abcd\nefgh\nijkl\nmnop"
s = "xZBV\njsbS\nJcpN\nfVnP"
#puts oper(method(:rot), s)
 oper(method(:selfie_and_rot), s)

#JWzViykznPnsEZkSed
#..................