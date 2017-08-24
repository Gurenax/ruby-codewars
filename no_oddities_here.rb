def no_odds( values )
    values.map! { |v|
        v % 2 == 0 ? v=v : v=nil
    }.compact
end

#print no_odds([0,1])
print no_odds([0,1,2,3])

#Best practice:
# def no_odds( values )
#   values.select &:even?
# end