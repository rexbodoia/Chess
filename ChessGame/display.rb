require 'colorize'

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
        piece.is_a?(NullPiece) ? string = "_" : string = "P"
        cursor.cursor_pos == [y,x] ? color = :red : color = :white
        evenness_match?(x, y) ? background = :light_black : background = :light_white
        print string.colorize( :color => color, :background => background )
      end
      puts ""
    end
    nil
  end
end
