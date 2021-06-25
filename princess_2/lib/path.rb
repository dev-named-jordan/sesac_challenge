require '../modules/path_helper_module'

class Path
  extend PathHelper

  def self.nextMove(n,r,c,grid)
    if !n.is_a?(Integer) || !r.is_a?(Integer) || !c.is_a?(Integer) || !grid.is_a?(Array) || n > 99 || n < 3
      return "Input is invalid"
    end
    bot_location = [r, c]
    princess_location = Princess.locate_princess(grid)
    make_path(n, bot_location, princess_location).split("\n").first
  end
end
