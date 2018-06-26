require_relative 'piece'

class King < Piece
  def initialize(board, pos, color)
    super
  end

  def moves

  end

  def move_diffs
    [[1,1], [1,-1], [-1,1], [-1,-1], [0,1], [1,0], [0,-1], [-1,0]]
  end
end
