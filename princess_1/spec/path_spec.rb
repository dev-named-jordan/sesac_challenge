require '../spec_helper'
require_relative '../lib/path'
require_relative '../lib/grid'
require_relative '../lib/bot'
require_relative '../lib/princess'

RSpec.describe 'Path' do
  describe 'Path instance' do
    it 'is an instance of path class' do

      new_grid = Grid.new(3)
      new_bot = Bot.new(3)
      new_princess = Princess.new(3)

      new_grid.place_bot(3)
      new_grid.place_princess(3)

      # new_path = Path.make_path(3, new_grid)
      new_path = new_grid.shortest_path(3, new_grid)
# require "pry"; binding.pry
      expect(new_path).to be_an(String)
    end
  end
end
