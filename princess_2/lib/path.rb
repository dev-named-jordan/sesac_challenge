def make_path(m, bot_location, princess_location)
  moves = []
  if princess_location[0] < 0
    princess_location[0] = size - 1
  end
  if princess_location[1] < 0
    princess_location[1] = size - 1
  end
  if bot_location[0] < 0
    bot_location[0] = size - 1
  end
  if bot_location[1] < 0
    bot_location[1] = size - 1
  end

  first_move = (bot_location[0] - princess_location[0]).abs
  second_move = (bot_location[1] - princess_location[1]).abs

  if bot_location[0] < princess_location[0]
    moves << 'DOWN,' * first_move
  else
    moves << 'UP,' * first_move
  end
  if bot_location[1] < princess_location[1]
    moves << 'RIGHT,' * second_move
  else
    moves << 'LEFT,' * second_move
  end
  moves.join.gsub(",", "\n")
end

def nextMove(n,r,c,grid)
  bot_location = [r, c]
  princess_location = Princess.locate_princess(grid)
  make_path(n, bot_location, princess_location).split("\n").first
end
