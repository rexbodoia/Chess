require_relative '../piece'

class  Pawn < Piece
include StepablePiece

  def initialize(board, pos, color)
    super
  end

  def move_dirs
    [[1,0], [-1,0]]
  end
end
