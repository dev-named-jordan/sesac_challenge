require '../spec_helper'
require_relative '../lib/bot'
require_relative '../lib/grid'

RSpec.describe 'Bot' do
  describe 'bot initialize' do
    it 'is an instance of a bot' do

      new_bot = Bot.new(3)

      expect(new_bot).to be_a(Bot)
      expect(new_bot.center).to eq(1)
    end
  end
end
