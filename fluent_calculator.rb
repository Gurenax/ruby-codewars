class Calc
    attr_reader :result, :operation

    def initialize
        @result = ""
    end

    def method_missing(sym)
        case sym.to_s
            when "zero"
                @result += "0"
                if @operation == true
                    @operation = false
                    return eval(@result).to_i
                end
            when "one"
                @result += "1"
                if @operation == true
                    @operation = false
                    return eval(@result).to_i
                end
            when "two"
                @result += "2"
                if @operation == true
                    @operation = false
                    return eval(@result).to_i
                end
            when "three"
                @result += "3"
                if @operation == true
                    @operation = false
                    return eval(@result).to_i
                end
            when "four"
                @result += "4"
                if @operation == true
                    @operation = false
                    return eval(@result).to_i
                end
            when "five"
                @result += "5"
                if @operation == true
                    @operation = false
                    return eval(@result).to_i
                end
            when "six"
                @result += "6"
                if @operation == true
                    @operation = false
                    return eval(@result).to_i
                end
            when "seven"
                @result += "7"
                if @operation == true
                    @operation = false
                    return eval(@result).to_i
                end
            when "eight"
                @result += "8"
                if @operation == true
                    @operation = false
                    return eval(@result).to_i
                end
            when "nine"
                @result += "9"
                if @operation == true
                    @operation = false
                    return eval(@result).to_i
                end
            when "plus"
                @result += "+"
                @operation = true
            when "minus"
                @result += "-"
                @operation = true
            when "times"
                @result += "*"
                @operation = true
            when "divided_by"
                @result += "/"
                @operation = true                
        end
        self
    end
end

puts Calc.new.four.plus.five #, 9)
puts Calc.new.five.plus.four #, 9)