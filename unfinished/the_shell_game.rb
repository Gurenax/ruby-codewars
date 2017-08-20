# UNFINISHED

def find_the_ball start, swaps
    max_jumps = swaps.length * 2
    #ball_start = start * 2
    jumps = 0

    swaps.flatten!
    p swaps.to_s
    p "swaps.length: #{swaps.length}"
    for i in start..swaps.length
        print "i: #{i} "
        puts "jumps: #{jumps}"

        if ( i==0 || (i % 2 == 0) ) && !(swaps[i+1].nil?)
            jumps += 1
        else
            puts "lookahead: #{swaps[i]} - #{swaps[i+1]}"
            if (i+1)<swaps.length # Look ahead if i exceeds array size
                if swaps[i] == swaps[i+1] && !(swaps[i+1].nil?)
                    jumps += 1
                end
                # else
                #     jumps -= 1 # Swap doesn't affect ball
                #     break # Jump cannot continue
                # end
            end
        end
        
    end

    jumps
end


#swaps = [[0, 1], [1, 2], [1, 0]]
#swaps = [[0, 1]]
#swaps = [[0, 1], [1, 2], [2, 0], [0, 1], [1, 2], [2, 1], [2, 0], [0, 2]]
swaps = [[0, 1], [1, 2], [2, 0], [0, 1], [1, 2], [2, 1], [2, 0], [0, 2]]
puts find_the_ball(8, swaps)