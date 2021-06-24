class Bot
  attr_reader :size, :bot_location, :center

  def initialize(size)
    @size = size
    @center = center_grid(size)
    @bot_location = @center, @center
  end

  def center_grid(size)
    (size - 1) / 2
  end

  def place_on_grid(grid)
    grid[@center][@center] = 'm'
  end
end
