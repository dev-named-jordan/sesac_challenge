require '../modules/path_helper_module'

class Path
  extend PathHelper

  def self.displayPathtoPrincess(m, grid)
    if !m.is_a?(Integer) || !m.odd? || !grid.is_a?(Array) || m > 99 || m < 3
      return "Input is invalid"
    end
    bot_location = Bot.locate_character(grid, "m")
    princess_location = Princess.locate_character(grid, "p")
    make_path(m, bot_location, princess_location)
  end
end
