class Bot
  def self.locate_bot(grid)
    grid.each_with_index do |element, index|
      if element.include?("m")
        element.chars.each_with_index do |e, i|
          if e == "m"
            return [index, i]
          end
        end
      end
    end
  end
end
