# UNFINISHED

fighters = [
    ["Ryu", "E.Honda", "Blanka", "Guile", "Balrog", "Vega"],
    ["Ken", "Chun Li", "Zangief", "Dhalsim", "Sagat", "M.Bison"]
]

initial_position = [0,0]
moves = ['up', 'left', 'right', 'left', 'left'] #['Ryu', 'Vega', 'Ryu', 'Vega', 'Balrog']
#moves = ["left","left","left","left","left","left","left","left"] #["Vega", "Balrog", "Guile", "Blanka", "E.Honda", "Ryu", "Vega", "Balrog"]

def streetFighterSelection(fighters, position, moves)
    x=position[0]
    y=position[1]
    result=[]
    moves.each { |move|
        case move
            when 'up'
                x+=1 #if x!=0
                x=0 if x==fighters.length-1
            when 'down'
                x-=1 #if x!=1
                x=fighters.length-1 if x<0
            when 'left'
                y-=1
                y=fighters[x].length-1 if y<0
            when 'right'
                y+=1
                y=0 if y==fighters[x].length
        end
        result << fighters[x][y]
    }
    result
end

puts streetFighterSelection(fighters, initial_position, moves).join(',')


#   Expected: ["Vega", "Balrog", "Guile", "Blanka", "E.Honda", "Ryu", "Vega", "Balrog"]
#instead got: ["M.Bison", "Sagat", "Dhalsim", "Zangief", "Chun Li", "Ken", nil, nil]
