# Greed is a dice game played with five six-sided dice. Your mission,
# should you choose to accept it, is to score a throw according to these rules.
# You will always be given an array with five six-sided dice values.

#  Three 1's => 1000 points
#  Three 6's =>  600 points
#  Three 5's =>  500 points
#  Three 4's =>  400 points
#  Three 3's =>  300 points
#  Three 2's =>  200 points
#  One   1   =>  100 points
#  One   5   =>   50 point
# A single die can only be counted once in each roll. For example, a "5"
# can only count as part of a triplet (contributing to the 500 points) or
# as a single 50 points, but not both in the same roll.

# Example scoring

#  Throw       Score
#  ---------   ------------------
#  5 1 3 4 1   50 + 2 * 100 = 250
#  1 1 1 3 1   1000 + 100 = 1100
#  2 4 4 5 4   400 + 50 = 450

def score( dice )
    score = 0

    [1,6,5,4,3,2,1,5].each { |x|
        if dice.count(x) >= 3   #  Three 1's => 1000 points
            3.times { dice.delete_at(dice.index(x) || dice.length) }
            case x
                when 1
                    score += 1000
                else
                    score += (x*100)
            end
        end
    }

    2.times {
        if dice.count(1) >= 1   #  One 1 => 100 points
            dice.delete_at(dice.index(1) || dice.length)
            score += 100
        end

        if dice.count(5) >= 1   #  One 5 => 100 points
            dice.delete_at(dice.index(5) || dice.length)
            score += 50
        end
    }
    score
end

puts score( [1, 1, 1, 1, 1] ) #1200
puts score( [2, 3, 4, 6, 2] ) #== 0,   "Should be 0 :-(" );
puts score( [2, 2, 2, 3, 3] ) #== 200, "Should be 200" );
puts score( [2, 4, 4, 5, 4] ) #== 450, "Should be 450" );


# Best Practice
# def score( dice )
#     score = 0
#     (1..6).each do |i|
#       counter = dice.select { |n| n == i }
#       score =+ (i == 1 ? 1000 : i * 100) if counter.size >= 3
#       score += (counter.size % 3) * 100 if i == 1
#       score += (counter.size % 3) * 50 if i == 5
#     end
#     score
#   end