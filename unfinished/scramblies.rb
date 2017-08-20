# UNFINISHED

def scramble(s1,s2)
    return false if s2.length > s1.length
    s1 = s1.split('').sort
    s2 = s2.split('').sort
    
    s1.map { |c|
        if s2.count(c) == 0
           # s1.delete(c)
           s1.delete_at(s1.index(c) || s1.length)
        end
    }
    puts s1.join('')
    puts s2.join('')
    s1.split('').uniq == s2.split('').uniq
end

puts scramble('rkqodlw','world')#,true)
puts scramble('cedewaraaossoqqyt','codewars')#,true)
puts scramble('katas','steak')#,false)
puts scramble('scriptjava','javascript')#,true)
puts scramble('scriptingjava','javascript')#,true)

puts scramble('glenn','glenn')#,true)

puts scramble('abbb','aaaa')#,true)
