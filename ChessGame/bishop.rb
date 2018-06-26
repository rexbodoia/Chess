require_relative 'piece'

class  Bishop < Piece
include SlideablePiece

  def initialize(board, pos, color)
    super
  end

  def move_dirs
    diagonal_dirs
  end
end
