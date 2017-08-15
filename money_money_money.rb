def calculate_years(principal, interest, tax, desired)
    y = 0
    sum = principal
    until sum >= desired
        principal_interest = sum*interest
        if y==0
            sum = (sum + principal_interest) - (principal_interest * tax)
        elsif y==1
            sum = (sum + principal_interest) - (principal_interest * tax) + tax
        else
            sum = (sum + principal_interest) - (principal_interest * tax)
        end
        y+=1
    end
    y
end

puts calculate_years(1000, 0.05, 0.18, 1100.00)


#  Let P be the Principal = 1000.00      
#  Let I be the Interest Rate = 0.05      
#  Let T be the Tax Rate = 0.18      
#  Let D be the Desired Sum = 1100.00


# After 1st Year -->
#  P = 1041.00
# After 2nd Year -->
#  P = 1083.86
# After 3rd Year -->
#  P = 1128.30

#puts calculate_years(921.767783342341, 0.0644062206204874, 0.14264400099312338, 8267.05353927728)

#Expected: 41, instead got: 43


# Best practice solution
# def calculate_years(principal, interest, tax, desired)
#     year = 0
#     while principal < desired
#       year += 1
#       income = principal * interest
#       principal += income - income * tax
#     end
#     year
#   end