class Path

  def self.make_path(size, grid)
    moves = []
    if grid.princess_location[0] < 0
      grid.princess_location[0] = grid.grid[0].size - 1
    end
    if grid.princess_location[1] < 0
      grid.princess_location[1] = grid.grid[0].size - 1
    end
    if grid.bot_location[0] < 0
      grid.bot_location[0] = grid.grid[0].size - 1
    end
    if grid.bot_location[1] < 0
      grid.bot_location[1] = grid.grid[0].size - 1
    end

    first_move = (grid.bot_location[0] - grid.princess_location[0]).abs
    second_move = (grid.bot_location[1] - grid.princess_location[1]).abs

    if grid.bot_location[0] < grid.princess_location[0]
      moves << 'down,' * first_move
    else
      moves << 'up,' * first_move
    end
    if grid.bot_location[1] < grid.princess_location[1]
      moves << 'right,' * second_move
    else
      moves << 'left,' * second_move
    end
    moves.join.gsub(",", "\n")
  end
end
