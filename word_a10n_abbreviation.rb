class Abbreviator

    def self.abbreviate(string)
        string.gsub!(/([A-Z])*\w+/).each { |s|
            if s.length >= 4
                s = "#{s.match(/\A\w/)}#{(s.length-2).to_s}#{s.match(/\w\Z/)}"
            else
                s
            end
        }
    end
    
end

puts Abbreviator.abbreviate("banana")#, "b4a", Abbreviator.abbreviate("banana") )
puts Abbreviator.abbreviate("double-barrel")#, "d4e-b4l", Abbreviator.abbreviate("double-barrel") )
puts Abbreviator.abbreviate("You, and I, should speak.")#, "You, and I, s4d s3k.", Abbreviator.abbreviate("You, and I, should speak.") )


# Best Practice
# class Abbreviator
#     def self.abbreviate(string)
#     string.gsub /(\w)(\w+{2})(\w)/ do |word|
#         "#{$1}#{word.length - 2}#{$3}" 
#     end
#     end
# end