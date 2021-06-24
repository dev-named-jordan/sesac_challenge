require '../spec_helper'
require_relative '../lib/princess'
require_relative '../lib/grid'

RSpec.describe 'Princess' do
  describe 'princess initialize' do
    it 'is an instance of a princess' do

      new_princess = Princess.new(3)

      expect(new_princess).to be_a(Princess)
      # expect(new_princess.princess_location).to eq([0, 0])
    end
  end
end
