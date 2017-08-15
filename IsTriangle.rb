def isTriangle(a,b,c)

	#Triangle inequality theorem
	# A + B > C
	# B + C > A
	# A + C > B
   
   (a + b > c && b + c > a && a + c > b) ? true : false

end

puts isTriangle(1,2,2) #==> true
puts isTriangle(7,2,2) #==> false