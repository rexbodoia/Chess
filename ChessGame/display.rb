require 'colorize'
require_relative 'board'
require_relative 'cursor'

class Display
  attr_reader :board, :cursor

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def evenness_match?(x, y)
    x % 2 == y % 2
  end

  def render
    board.grid.each_with_index do |row, y|
      row.each_with_index do |piece, x|
        if piece.is_a?(King)
          string = :K
        elsif piece.is_a?(Knight)
          string = :k
        elsif piece.is_a?(Queen)
          string = :Q
        elsif piece.is_a?(Bishop)
          string = :B
        elsif piece.is_a?(Rook)
          string = :R
        elsif piece.is_a?(Pawn)
          string = :P
        elsif piece.is_a?(NullPiece)
          string = :_
        end
        cursor.cursor_pos == [y,x] ? color = :red : color = :white
        evenness_match?(x, y) ? background = :light_black : background = :light_white
        print string.to_s.colorize( :color => color, :background => background )
      end
      puts ""
    end
    nil
  end
end
