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
    it 'can display correct path to princess and longer' do
      size = 5
      grid = ["p----", "-----", "--m--", "-----", "-----"]
      new_path = Path.displayPathtoPrincess(size, grid)
      expect(new_path).to be_an(String)
      expect(new_path).to eq("UP\nUP\nLEFT\nLEFT\n")
    end
    it 'gives error when input is invalid with size as a string' do
      size = "3"
      grid = ["---", "-m-", "--p"]
      new_path = Path.displayPathtoPrincess(size, grid)
      expect(new_path).to eq("Input is invalid")
    end
    it 'gives error when input is invalid when size is over 99' do
      size = 101
      grid = ["---", "-m-", "--p"]
      new_path = Path.displayPathtoPrincess(size, grid)
      expect(new_path).to eq("Input is invalid")
    end
    it 'gives error when input is invalid when size is under 3' do
      size = 1
      grid = ["---", "-m-", "--p"]
      new_path = Path.displayPathtoPrincess(size, grid)
      expect(new_path).to eq("Input is invalid")
    end
    it 'gives error when input is invalid when even number is input' do
      size = 4
      grid = ["---", "-m-", "--p"]
      new_path = Path.displayPathtoPrincess(size, grid)
      expect(new_path).to eq("Input is invalid")
    end
    it 'gives error when input for grid is not an array' do
      size = 4
      grid = "---", "-m-", "--p"
      new_path = Path.displayPathtoPrincess(size, grid)
      expect(new_path).to eq("Input is invalid")
    end
  end
end
