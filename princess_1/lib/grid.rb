class Grid
  attr_reader :grid_array

  def initialize(size)
    @grid_array = Array.new(size)
    @grid = create_grid(size)
  end

  def create_grid(size)
    (0...size).each do |row|
      grid_array[row] = '-' * size
    end
  end
end
