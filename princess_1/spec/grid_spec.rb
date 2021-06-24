require '../spec_helper'
require_relative '../lib/grid'
require_relative '../lib/bot'

RSpec.describe 'Grid' do
  describe 'grid initialize' do
    it 'is an instance of a grid' do

      new_grid = Grid.new(3)

      expect(new_grid).to be_a(Grid)
      expect(new_grid.grid).to eq(["---", "---", "---"])
      expect(new_grid.place_bot(3)).to eq('m')
      expect(new_grid.grid).to eq(["---", "-m-", "---"])
    end
  end
end
