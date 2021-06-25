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

      new_grid.place_bot(3)
      new_grid.place_princess(3)

      new_path = new_grid.shortest_path(3, new_grid)
      expect(new_path).to be_an(String)
    end
    it 'is an instance of path class with size 7' do

      new_grid = Grid.new(7)
      new_bot = Bot.new(7)
      new_princess = Princess.new(7)

      new_grid.place_bot(7)
      new_grid.place_princess(7)

      new_path = new_grid.shortest_path(7, new_grid)

      expect(new_path).to be_an(String)
    end
    it 'is an instance of path class with size 99' do

      new_grid = Grid.new(99)
      new_bot = Bot.new(99)
      new_princess = Princess.new(99)

      new_grid.place_bot(99)
      new_grid.place_princess(99)

      new_path = new_grid.shortest_path(99, new_grid)
      expect(new_path).to be_an(String)
    end
  end
end
