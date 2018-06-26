require_relative 'piece'

class Board
  attr_accessor :grid

  def initialize
    grid = Array.new(8) { Array.new(8) }
    @grid = grid
    grid.each_index do |i|
      grid[i].each_index do |j|
        if i > 1 && i < 6
          add_piece(NullPiece.instance, [i, j])
        else
          add_piece(Piece.new, [i, j])
        end
      end
    end
  end

  def []=(pos, val)
    x, y = pos
    grid[x][y] = val
  end

  def [](pos)
    x, y = pos
    grid[x][y]
  end

  def add_piece(piece, pos)
    self[pos] = piece
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
end
