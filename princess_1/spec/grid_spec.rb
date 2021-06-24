require '../spec_helper'
require_relative '../lib/grid'

RSpec.describe 'Grid' do
  describe 'grid initialize' do
    it 'is an instance of a grid' do

      new_grid = Grid.new(3)

      expect(new_grid).to be_a(Grid)
      # require "pry"; binding.pry
      # expect(new_grid).to eq([])
    end
  end
end
