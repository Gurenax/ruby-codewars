def domain_name(url)
    url.sub!(/^(http)[s]?(:\/\/)(www.)?/i,'').match(/^[a-z0-9-]*/).to_s
end

puts domain_name("http://github.com/carbonfive/raygun") == "github" 
puts domain_name("http://www.zombie-bites.com") == "zombie-bites"
puts domain_name("https://www.cnet.com") == "cnet"