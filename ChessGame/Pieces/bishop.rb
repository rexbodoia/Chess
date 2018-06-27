require_relative '../piece'

class  Bishop < Piece
include SlideablePiece

  def initialize(board, pos, color)
    super
  end

  def move_dirs
    diagonal_dirs
  end

  POSITIONS = [[0,2], [0,5], [7,2], [7, 5]]
end
