#!/bin/ruby

def make_path(m, bot_location, princess_location)
  moves = []
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

def nextMove(n,r,c,grid)
  bot_location = [r, c]
  princess_location = locate_character(grid, "p")
  puts make_path(n, bot_location, princess_location).split("\n").first
end

n = gets.to_i

r,c = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

(0...n).each do |i|
    grid[i] = gets
end

nextMove(n,r,c,grid)
