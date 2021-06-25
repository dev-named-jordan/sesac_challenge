class Princess
  def self.locate_princess(grid)
    grid.each_with_index do |element, index|
      if element.include?("p")
        element.chars.each_with_index do |e, i|
          if e == "p"
            return [index, i]
          end
        end
      end
    end
  end
end
