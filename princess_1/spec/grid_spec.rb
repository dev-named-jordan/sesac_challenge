require '../spec_helper'
require_relative '../lib/grid'

RSpec.describe 'Grid' do
  describe 'grid initialize' do
    it 'is an instance of a grid' do

      new_grid = Grid.new(3)

      expect(new_grid).to be_a(Grid)
      expect(new_grid.grid_array).to eq(["---", "---", "---"])
    end
  end
end
