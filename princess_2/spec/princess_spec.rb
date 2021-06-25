require '../spec_helper'
require_relative '../lib/princess'

RSpec.describe 'Princess' do
  describe 'Princess methods' do
    it 'can locate princess grid from grid input' do
      size = 3
      grid = ["---", "-m-", "--p"]
      princess_location = Princess.locate_princess(grid)
      expect(princess_location).to be_an(Array)
      expect(princess_location).to eq([2, 2])
    end
  end
end
