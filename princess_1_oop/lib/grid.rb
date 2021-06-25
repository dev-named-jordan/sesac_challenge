class Grid
  attr_accessor :grid, :bot_location, :princess_location

  def initialize(size)
    @grid = Array.new(size)
    create_grid(size)
  end

  def create_grid(size)
    (0...size).each do |row|
      grid[row] = '-' * size
    end
  end

  def place_bot(size)
    new_bot = Bot.new(size)
    @bot_location = new_bot.place_on_grid(grid)
  end

  def place_princess(size)
    new_princess = Princess.new(size)
    @princess_location = new_princess.place_on_grid(grid)
  end

  def displayPathtoPrincess(size, grid)
    new_bot = Bot.new(size)
    new_princess = Princess.new(size)
    place_bot(size)
    place_princess(size)
    # locate_bot(size, grid)
    # locate_princess(size, grid)
    Path.make_path(size, bot_location, princess_location)
  end
end
