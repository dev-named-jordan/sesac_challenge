require '../spec_helper'
require_relative '../lib/bot'

RSpec.describe 'Bot' do
  describe 'Bot methods' do
    it 'can locate bot grid from grid input' do
      # size = 3
      grid = ["---", "-m-", "--p"]
      character = "m"
      bot_location = Bot.locate_character(grid, character)
      expect(bot_location).to be_an(Array)
      expect(bot_location).to eq([1, 1])
    end
  end
end
