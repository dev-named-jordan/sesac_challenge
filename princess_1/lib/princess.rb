class Princess
  def initialize(size)
  end

  def place_on_grid(grid)
    four_corners = [0, 0], [0, -1], [-1, 0], [-1, -1]
    sample_corner = four_corners.sample
    grid[sample_corner[0]][sample_corner[1]] = 'p'
  end
end
