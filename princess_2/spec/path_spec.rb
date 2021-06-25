require '../spec_helper'
require_relative '../lib/path'

RSpec.describe 'Path' do
  describe 'next move' do
    it 'can find next move' do
      n = 5
      r = 2
      c = 3
      grid = ["-----", "-----", "p--m-", "-----", "-----"]
# require "pry"; binding.pry
      # expect(nextMove(n,r,c,grid)).to be_an(String)
      expect(nextMove(n,r,c,grid)).to eq("LEFT")
    end
    it 'can find next move one space away' do
      n = 5
      r = 2
      c = 2
      grid = ["-----", "-----", "--mp-", "-----", "-----"]
# require "pry"; binding.pry
      # expect(nextMove(n,r,c,grid)).to be_an(String)
      expect(nextMove(n,r,c,grid)).to eq("RIGHT")
    end
    # it 'is an instance of path class with size 7' do
    #   new_grid = Grid.new(7)
    #   new_bot = Bot.new(7)
    #   new_princess = Princess.new(7)
    #   new_path = new_grid.displayPathtoPrincess(7, new_grid)
    #
    #   expect(new_path).to be_an(String)
    # end
    # it 'is an instance of path class with size 99' do
    #   new_grid = Grid.new(99)
    #   new_bot = Bot.new(99)
    #   new_princess = Princess.new(99)
    #   new_path = new_grid.displayPathtoPrincess(99, new_grid)
    #   expect(new_path).to be_an(String)
    # end
    # it 'it gives correct path' do
    #   size = 3
    #   grid = ["---", "-m-", "--p"]
    #   new_path = Path.displayPathtoPrincess(size, grid)
    #   expect(new_path).to be_an(String)
    #   expect(new_path).to eq("DOWN\nRIGHT\n")
    # end
    # it 'Can find the princess location in a larger grid' do
    #   array_grid = ["-----", "-----", "--m--", "-----", "----p"]
    #   expected = Bot.find_location(array_grid, "p")
    #   expect(expected).to eq([4, 4])
    # end
  end
end
