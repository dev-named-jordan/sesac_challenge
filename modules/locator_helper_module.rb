module LocatorHelper
  def locate_character(grid, character)
    grid.each_with_index do |element, index|
      if element.include?(character)
        element.chars.each_with_index do |e, i|
          if e == character
            return [index, i]
          end
        end
      end
    end
  end
end
