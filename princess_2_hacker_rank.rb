#!/bin/ruby

def make_path(m, bot_location, princess_location)
  moves = []
  if princess_location[0] < 0
    princess_location[0] = size - 1
  end
  if princess_location[1] < 0
    princess_location[1] = size - 1
  end
  if bot_location[0] < 0
    bot_location[0] = size - 1
  end
  if bot_location[1] < 0
    bot_location[1] = size - 1
  end

  first_move = (bot_location[0] - princess_location[0]).abs
  second_move = (bot_location[1] - princess_location[1]).abs

  if bot_location[0] < princess_location[0]
    moves << 'DOWN,' * first_move
  else
    moves << 'UP,' * first_move
  end
  if bot_location[1] < princess_location[1]
    moves << 'RIGHT,' * second_move
  else
    moves << 'LEFT,' * second_move
  end
  moves.join.gsub(",", "\n")
end

def locate_bot(grid)
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

def locate_princess(grid)
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

def nextMove(n,r,c,grid)
  bot_location = [r, c]
  princess_location = locate_princess(grid)
  puts make_path(n, bot_location, princess_location).split("\n").first
end

n = gets.to_i

r,c = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

(0...n).each do |i|
    grid[i] = gets
end

nextMove(n,r,c,grid)

displayPathtoPrincess(m,grid)
