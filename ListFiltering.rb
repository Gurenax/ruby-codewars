# Returns a new list with the strings filtered out
def filter_list(l)
  l.select { |x| x.is_a? Integer }
end



puts filter_list([1,2,'a','b']) #== [1,2]
puts filter_list([1,'a','b',0,15]) #== [1,0,15]
puts filter_list([1,2,'aasf','1','123',123]) #== [1,2,123]



## Alternative solution
=begin
def filter_list(l)
  l.reject { |x| x.is_a? String }
end
=end