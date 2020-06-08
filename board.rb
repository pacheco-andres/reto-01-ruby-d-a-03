require 'pry'  #debuger
require 'matrix'
load 'cells.rb'

class Board
  def build
    @board = Matrix.build(10) { rand(0..1) }#Array.new(10) { Array.new(10, rand(0..1)) }
  end

  def play
    (0..9).each do |row|
      (0..9).each do |column|
        cell = @board[row, column]
        a = Cell.new
        a.alive(cell)
      end
    end
  end
end