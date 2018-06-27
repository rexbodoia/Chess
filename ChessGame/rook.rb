require_relative 'piece'

class  Rook < Piece
include SlideablePiece

  def initialize(board, pos, color)
    super
  end

  def move_dirs
    horizontal_dirs
  end

  POSITIONS = [[0,0], [0, 7], [7,0], [7,7]]
end
