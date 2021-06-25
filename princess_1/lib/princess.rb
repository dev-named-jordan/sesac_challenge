class Princess

  def initialize(size)
  end

  def place_on_grid(grid)
    four_corners = [0, 0], [0, -1], [-1, 0], [-1, -1]
    princess_location = four_corners.sample
    grid[princess_location[0]][princess_location[1]] = 'p'

#the negative ones in the arrays for four corners are causing issues when calling princess_location

    princess_location
  end
end
