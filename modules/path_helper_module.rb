module PathHelper
  def make_path(m, bot_location, princess_location)
    first_move = (bot_location[0] - princess_location[0]).abs
    second_move = (bot_location[1] - princess_location[1]).abs

    directions(first_move, second_move, bot_location, princess_location)
  end

  def directions(first_move, second_move, bot_location, princess_location)
    moves = []
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
end
