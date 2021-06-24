class Grid
  attr_accessor :grid

  def initialize(size)
    @grid = Array.new(size)
    create_grid(size)
    # @center = center_grid(size)
  end

  def create_grid(size)
    (0...size).each do |row|
      grid[row] = '-' * size
    end
  end

  def center_grid(size)
    (size - 1) / 2
  end

  def place_bot(size)
    new_bot = Bot.new(size)
    new_bot.place_on_grid(grid)
  end

  def place_princess(size)
    new_princess = Princess.new(size)
    new_princess.place_on_grid(grid)
  end
end
