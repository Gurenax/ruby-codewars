def maze_runner(maze, directions)
    x = ""
    y = ""
    # Find Starting Position
    maze.each_with_index { |m, index|        
        x = m.find_index(2)
        if !x.nil?
            y=index
            break
        end
    }

    directions.each { |d|
        case d
            when 'N'
                y-=1
            when 'S'
                y+=1
            when 'E'
                x+=1
            when 'W'
                x-=1
        end

        if y<0 || y>maze.length-1
            return "Dead"
        elsif x<0 || x>maze[y].length-1
            return "Dead"
        end

        if maze[y][x] == 1
            return "Dead"
        elsif maze[y][x] == 3
            return "Finish"
        end
    }
    return "Lost"
end

maze = [[1,1,1,1,1,1,1],
        [1,0,0,0,0,0,3],
        [1,0,1,0,1,0,1],
        [0,0,1,0,0,0,1],
        [1,0,1,0,1,0,1],
        [1,0,0,0,0,0,1],
        [1,2,1,0,1,0,1]]


p maze_runner(maze,["N","N","N","N","N","E","E","E","E","E"])#,"Finish")
p maze_runner(maze,["N","N","N","N","N","E","E","S","S","E","E","N","N","E"])#, "Finish")
p maze_runner(maze,["N","N","N","N","N","E","E","E","E","E","W","W"])#, "Finish")

p maze_runner(maze,["N","N","N","W","W"])#, "Dead")
#p maze_runner(maze,["N","N","N","N","N","E","E","S","S","S","S","S","S"])#, "Dead")

p maze_runner(maze,["N","E","E","E","E"])#, "Lost")


# Best Practice
# def maze_runner(maze, directions)
#     startX = 0 ; startY = 0
#     maze.each_with_index do |boardY, y|
#       boardY.each_with_index {|boardX, x| (startX = x ; startY = y) if boardX == 2}
#     end
  
#     directions.each do |dire|
#       case dire
#         when "N" ; startY -= 1
#         when "E" ; startX += 1
#         when "S" ; startY += 1
#         when "W" ; startX -= 1
#       end
  
#       return "Dead" if startY < 0 || startY > maze.length-1 || startX < 0 || startX > maze.length-1 || maze[startY][startX] == 1
#       return "Finish" if maze[startY][startX] == 3
#     end
#     "Lost"
#   end