def list names
    name_list = ""
    if names.size==1
        name_list = names[0][:name]
    else
        names.each_with_index { |n, i|
            if i+1<names.length-1
                name_list += n[:name] + ", "
            elsif i<names.length-1
                name_list += n[:name] + " "
            else
                name_list += "& " + n[:name]
            end
        }
    end
    name_list
end

puts list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}])#, 'Bart, Lisa, Maggie, Homer & Marge', "Must work with many names")
puts list([{name: 'Bart'},{name: 'Lisa'}])#, 'Bart & Lisa', "Must work with two names")
puts list([{name: 'Bart'}])#, 'Bart', "Wrong output for a single name")

# Best Practice
# def list names
#     names = names.map { |name| name[:name] }
#     last_name = names.pop
#     return last_name.to_s if names.empty?
#     "#{names.join(', ')} & #{last_name}"
#   end