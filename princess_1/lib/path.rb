class Path

  attr_reader :moves, :path_size, :grid

  def initialize(size, grid)
    @moves = []
    @path_size = size
    @grid = grid
  end

  def make_path(size, grid)
    # moves = []
    first_move = (grid.bot_location[0] - grid.princess_location[0]).abs
    second_move = (grid.bot_location[1] - grid.princess_location[1]).abs
    if grid.bot_location[0] < grid.princess_location[0]
      @moves << 'down,' * first_move
    else
      @moves << 'up,' * first_move
    end
    if grid.bot_location[1] < grid.princess_location[1]
      @moves << 'right,' * second_move
    else
      @moves << 'left,' * second_move
    end
    # require "pry"; binding.pry
    puts @moves.join.gsub(",", "\n")
  end
end

# -----           -----
# -----           -p---
# ----m           -----
# -----           ---m-
# -p---           -----
#
# m = [2, 4]      m = [3, 3]
# p = [4, 1]      p = [1, 1]
#
# if m[0] < p[0] first move is down
# else up
#   if m[1] < p[1] second move is right
#   else left
#
#     absolute values  -2, 3
