class Grid
  attr_reader :grid

  def initialize(size)
    @grid = Array.new(size)
    create_grid(size)
  end

  def create_grid(size)
    (0...size).each do |row|
      grid[row] = '-' * size
    end
  end
end
