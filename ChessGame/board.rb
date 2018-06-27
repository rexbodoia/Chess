require_relative 'piece'

class Board
  attr_accessor :grid

  def initialize
    grid = Array.new(8) { Array.new(8) { NullPiece.instance } }
    @grid = grid
    grid.each_index do |row|
      if [1,6].include?(row)
        grid.each_index do |col|
          self[[row, col]] = Pawn.new(self, [row, col], :color)
        end
      end
    end
     add_pieces
  end

  def []=(pos, val)
    x, y = pos
    grid[x][y] = val
  end

  def [](pos)
    x, y = pos
    grid[x][y]
  end

  def add_pieces
    pieces = [King, Queen, Knight, Rook, Bishop]
    pieces.each do |piece|
      piece::POSITIONS.each do |pos|
        self[pos] = piece.new(self, pos, :color)
      end
    end
  end

  def move_piece(start_pos, end_pos)
    raise "no piece at that position" if self[start_pos].is_a?(NullPiece)
    raise "not a valid move" if self[end_pos] == nil
    self[end_pos] = self[start_pos]
    self[start_pos] = NullPiece.instance
  end

  def valid_pos?(pos)
    index = (0..7).to_a
    index.include?(pos[0]) && index.include?(pos[1])
  end

  def inspect
    p
  end

  def populate_board()

  end
end
