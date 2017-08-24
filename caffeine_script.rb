def caffeineBuzz(n)
    result = ""
    
    if n%3==0 && n%4==0
        result << "Coffee"
    elsif n%3==0
        result << "Java"
    end

    if ( (result.include? "Java") || (result.include? "Coffee") ) && n%2==0
        result << "Script"
    elsif ( !(result.include? "Java") && !(result.include? "Coffee") )
        return "mocha_missing!"
    end
    result
end

p caffeineBuzz(1)#, "mocha_missing!")
p caffeineBuzz(3)#, "Java")
p caffeineBuzz(6)#, "JavaScript")
p caffeineBuzz(12)#, "CoffeeScript")