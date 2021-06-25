class Path

  # attr_reader :path_size, :grid
  #
  # def initialize(size, grid)
  #   @path_size = size
  #   @grid = grid
  # end

  def self.make_path(size, grid)
    moves = []

# grid.grid[0].size - 1

    if grid.princess_location[0] < 0
      # grid.princess_location[0] = grid.princess_location[0].abs
      grid.princess_location[0] = grid.grid[0].size - 1
    end
    if grid.princess_location[1] < 0
      # grid.princess_location[1] = grid.princess_location[1].abs
      grid.princess_location[1] = grid.grid[0].size - 1
    end
    if grid.bot_location[0] < 0
      # grid.bot_location[0] = grid.bot_location[0].abs
      grid.bot_location[0] = grid.grid[0].size - 1
    end
    if grid.bot_location[1] < 0
      # grid.bot_location[1] = grid.bot_location[1].abs
      grid.bot_location[1] = grid.grid[0].size - 1
    end

    first_move = (grid.bot_location[0] - grid.princess_location[0]).abs
    second_move = (grid.bot_location[1] - grid.princess_location[1]).abs

#might need to add a minus or plus one to the grid.bot_locations

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
# p1--    --p2   ---   ---
#  -m-    -m-    -m-   -m-
#  ---    ---   p3--   --p4
#  m = [1, 1]
# p1 = [0, 0]
# p2 = [0, 2]
# p3 = [2, 0]
# p4 = [2, 2]

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
