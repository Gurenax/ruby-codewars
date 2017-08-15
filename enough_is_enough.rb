def delete_nth(order,max_e)
    number_occurrences = {} 
    order.map { |number|
        if number_occurrences.has_key? number.to_s.to_sym
            number_occurrences[number.to_s.to_sym]+=1
        else
            number_occurrences[number.to_s.to_sym]=1
        end

        if number_occurrences[number.to_s.to_sym] > max_e
            number = nil
        else
            number = number
        end
    }.compact
end

#puts delete_nth([1,1,1,1],2) # return [1,1]
# puts delete_nth([20,37,20,21],1) # return [20,37,21]
# puts delete_nth([20,37,20,21], 1)
# puts delete_nth([1,1,3,3,7,2,2,2,2], 3)

puts delete_nth([1, 1, 1, 1, 1], 5)
