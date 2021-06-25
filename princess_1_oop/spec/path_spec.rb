require '../spec_helper'
require_relative '../lib/path'
require_relative '../lib/grid'
require_relative '../lib/bot'
require_relative '../lib/princess'

RSpec.describe 'Path' do
  describe 'Path instance' do
    it 'is an instance of path class with size 3' do
      new_grid = Grid.new(3)
      new_bot = Bot.new(3)
      new_princess = Princess.new(3)

      expect(new_grid.grid).to be_an(Array)
      expect(new_grid.grid).to eq(["---", "---", "---"])

      new_path = new_grid.displayPathtoPrincess(3, new_grid)

      expect(new_path).to be_an(String)
    end
    it 'is an instance of path class with size 7' do
      new_grid = Grid.new(7)
      new_bot = Bot.new(7)
      new_princess = Princess.new(7)
      new_path = new_grid.displayPathtoPrincess(7, new_grid)

      expect(new_path).to be_an(String)
    end
    it 'is an instance of path class with size 99' do
      new_grid = Grid.new(99)
      new_bot = Bot.new(99)
      new_princess = Princess.new(99)
      new_path = new_grid.displayPathtoPrincess(99, new_grid)
      expect(new_path).to be_an(String)
    end
    it 'it gives correct path' do
      size = 3
      grid = Grid.new(3)
      new_path = grid.displayPathtoPrincess(size, grid)

      expect(new_path).to be_an(String)

      new_array = [
                    "DOWN\nRIGHT\n",
                    "DOWN\nLEFT\n",
                    "UP\nLEFT\n",
                    "UP\nRIGHT\n"
                  ]

      expect(new_array).to include(grid.displayPathtoPrincess(size, grid))
    end
    # it 'Can find the princess location in a larger grid' do
    #   array_grid = ["-----", "-----", "--m--", "-----", "----p"]
    #   expected = Bot.find_location(array_grid, "p")
    #   expect(expected).to eq([4, 4])
    # end
  end
end
