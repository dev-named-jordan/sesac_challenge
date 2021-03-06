require '../spec_helper'
require_relative '../lib/path'
require_relative '../lib/princess'
require '../modules/path_helper_module'

RSpec.describe 'Path' do
  describe 'next move' do
    it 'can find next move from user input' do
      n = 5
      r = 2
      c = 3
      grid = ["-----", "-----", "p--m-", "-----", "-----"]
      expect(Path.nextMove(n,r,c,grid)).to be_an(String)
      expect(Path.nextMove(n,r,c,grid)).to eq("LEFT")
    end
    it 'can find next move one space away' do
      n = 5
      r = 2
      c = 2
      grid = ["-----", "-----", "--mp-", "-----", "-----"]
      expect(Path.nextMove(n,r,c,grid)).to eq("RIGHT")
    end
    it 'gives error when input is invalid with n as a string' do
      n = "3"
      r = 1
      c = 2
      grid = ["-----", "-----", "p--m-", "-----", "-----"]
      new_path = Path.nextMove(n, r, c, grid)
      expect(new_path).to eq("Input is invalid")
    end
    it 'gives error when input is invalid with n as a float' do
      n = 3.0
      r = 1
      c = 2
      grid = ["-----", "-----", "p--m-", "-----", "-----"]
      new_path = Path.nextMove(n, r, c, grid)
      expect(new_path).to eq("Input is invalid")
    end
    it 'gives error when input is invalid with r as a string' do
      n = 3
      r = "1"
      c = 2
      grid = ["-----", "-----", "p--m-", "-----", "-----"]
      new_path = Path.nextMove(n, r, c, grid)
      expect(new_path).to eq("Input is invalid")
    end
    it 'gives error when input is invalid with c as a string' do
      n = 3
      r = 1
      c = "2"
      grid = ["-----", "-----", "p--m-", "-----", "-----"]
      new_path = Path.nextMove(n, r, c, grid)
      expect(new_path).to eq("Input is invalid")
    end
    it 'gives error when input is invalid with n < 3' do
      n = 1
      r = 1
      c = "2"
      grid = ["-----", "-----", "p--m-", "-----", "-----"]
      new_path = Path.nextMove(n, r, c, grid)
      expect(new_path).to eq("Input is invalid")
    end
    it 'gives error when input is invalid with n > 99' do
      n = 101
      r = 1
      c = 2
      grid = ["-----", "-----", "p--m-", "-----", "-----"]
      new_path = Path.nextMove(n, r, c, grid)
      expect(new_path).to eq("Input is invalid")
    end
    it 'gives error when input is invalid with grid as a string' do
      n = 3
      r = 1
      c = 2
      grid = "----------p--m-----------"
      new_path = Path.nextMove(n, r, c, grid)
      expect(new_path).to eq("Input is invalid")
    end
  end
end
