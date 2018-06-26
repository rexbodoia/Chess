require 'colorize'
require_relative 'board'
require_relative 'cursor'

class Display
  attr_reader :board
    
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end
  
  def render
    board.grid.each do |row| 
      row.each do |piece|
        if piece.is_a?(NullPiece)
          print "_"
        else
          print "P" 
        end
      end
      puts ""
    end
    nil
  end
end