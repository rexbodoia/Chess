require_relative 'piece'

class King < Piece
  include StepablePiece

  def initialize(board, pos, color)
    super
  end

  def move_diffs
    [[1,1], [1,-1], [-1,1], [-1,-1], [0,1], [1,0], [0,-1], [-1,0]]
  end

  POSITIONS = [[0,3], [7,3]]
end
