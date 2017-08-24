def discover_original_price(discounted_price, sale_percentage)
    (discounted_price.to_f/((100-sale_percentage)*0.01)).round(2)
end


puts discover_original_price(75,25)#,100)
puts discover_original_price(25,75)#,100)
puts discover_original_price(75.75,25)#,101)
puts discover_original_price(373.85,11.2)#,421)
puts discover_original_price(458.2,17.13)#,552.91)