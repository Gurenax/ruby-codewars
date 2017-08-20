# UNFINISHED

bin='01'
oct='01234567'
dec='0123456789'
hex='0123456789abcdef'
allow='abcdefghijklmnopqrstuvwxyz'
allup='ABCDEFGHIJKLMNOPQRSTUVWXYZ'
alpha='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
alphanum='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

def convert(string, source, target)
    if source=='0123456789' #Dec
        case target
            when '01' # Dec to Bin
                return string.to_i.to_s(2)
            when '01234567' # Dec to Oct
                return string.to_i.to_s(8)
            when 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ' # Dec to Alpha
                arr=[]
                arr = target.split('')
                return arr[string.to_i]
            when 'abcdefghijklmnopqrstuvwxyz' # Dec to allow
               

        end
    elsif source=='01' #Bin
        case target
            when '0123456789' #Bin to Dec
                return string.to_i(2)
            when '0123456789abcdef' #Bin to Hex   
                arr=[]
                arr << string.to_i(16).to_s
                return arr.pack("H*").downcase
        end
    end
        
    
end

puts convert("15", dec, bin) #should return "1111"
puts convert("156", dec, bin) #should return "10011100"
puts convert("15", dec, oct) #should return "17"
puts convert("1010", bin, dec) #should return "10"
puts convert("1010", bin, hex) #should return "a"
puts convert("0", dec, alpha) #should return "a"

#puts convert("10111011", bin, dec)
puts convert("27", dec, allow) #should return "bb"
# convert("hello", allow, hex) #should return "320048"

