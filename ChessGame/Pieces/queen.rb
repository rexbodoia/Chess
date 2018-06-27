require_relative '../piece'

class  Queen < Piece
include SlideablePiece

  def initialize(board, pos, color)
    super
  end

  def move_dirs
    diagonal_dirs + horizontal_dirs
  end

  POSITIONS = [[0,4], [7,4]]
end
