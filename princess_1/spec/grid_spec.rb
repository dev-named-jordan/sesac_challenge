require '../spec_helper'
require_relative '../lib/grid'
require_relative '../lib/bot'

RSpec.describe 'Grid' do
  describe 'grid initialize' do
    it 'is an instance of a grid' do

      new_grid = Grid.new(3)

      expect(new_grid).to be_a(Grid)
      expect(new_grid.grid).to eq(["---", "---", "---"])
    end
  end
  describe 'grid placements' do
    it 'places bot in middle of board' do

      new_grid = Grid.new(3)

      expect(new_grid.place_bot(3)).to eq([1, 1])
      expect(new_grid.grid).to eq(["---", "-m-", "---"])
    end
    it 'places princess in random corner' do

      new_grid = Grid.new(3)

      expect(new_grid.place_bot(3)).to eq([1, 1])
      expect(new_grid.grid).to eq(["---", "-m-", "---"])
      expect(new_grid.grid).to be_an(Array)

      new_array = [
                    [0, 0],
                    [0, -1],
                    [-1, 0],
                    [-1, -1]
                  ]

      new_grid.place_princess(3)

      expect(new_array).to include(new_grid.princess_location)
    end
  end
end
