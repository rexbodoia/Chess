require_relative "./piece"

class Board
  attr_accessor :grid
  
  def initialize
    grid = Array.new(8) { Array.new(8) }
    @grid = grid
    grid.each_index do |i|
      grid[i].each_index do |j|
        if i > 1 && i < 6
          add_piece(NullPiece.new, [i, j])
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
    raise "no piece at that position" if start_pos.is_a?(NullPiece)
    raise "not a valid move" if end_pos == nil
    self[end_pos] = self[start_pos]
    self[start_pos] = NullPiece.new 
  end
  
  def inspect
    p 
  end
end