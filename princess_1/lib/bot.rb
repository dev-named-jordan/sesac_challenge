class Bot
  attr_reader :center

  def initialize(size)
    @center = center_grid(size)
  end

  def center_grid(size)
    (size - 1) / 2
  end

  def place_on_grid(grid)
    grid[@center][@center] = 'm'
    [@center, @center]
  end
end
