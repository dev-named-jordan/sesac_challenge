require '../spec_helper'
require_relative '../lib/bot'
require_relative '../lib/princess'
require_relative '../lib/path'

RSpec.describe 'Path' do
  describe 'path methods' do
    it 'can display correct path to princess' do
      size = 3
      grid = ["---", "-m-", "--p"]
      new_path = Path.displayPathtoPrincess(size, grid)
      expect(new_path).to be_an(String)
      expect(new_path).to eq("DOWN\nRIGHT\n")
    end
  end
end
