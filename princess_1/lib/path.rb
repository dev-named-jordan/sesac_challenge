class Path
  def self.make_path(m, bot_location, princess_location)
    negative_indice_cleaner(princess_location, bot_location)

    first_move = (bot_location[0] - princess_location[0]).abs
    second_move = (bot_location[1] - princess_location[1]).abs

    directions(first_move, second_move, bot_location, princess_location)
  end

  def self.negative_indice_cleaner(bot_location, princess_location)
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
  end

  def self.directions(first_move, second_move, bot_location, princess_location)
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

  def self.displayPathtoPrincess(m, grid)
    if !m.is_a?(Integer) || !m.odd? || !grid.is_a?(Array) || m > 99 || m < 3
      return "Input is invalid"
    end
    bot_location = Bot.locate_bot(grid)
    princess_location = Princess.locate_princess(grid)
    make_path(m, bot_location, princess_location)
  end
end
