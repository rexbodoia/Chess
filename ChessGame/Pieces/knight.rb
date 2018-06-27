require_relative '../piece'

class Knight < Piece
  include StepablePiece

  def initialize(board, pos, color)
    super
  end

  def move_diffs
    [[2, 1], [1, 2], [2, -1], [-1, 2], [-2, 1], [1, -2], [-1, -2], [-2, -1]]
  end

  POSITIONS = [[0, 1], [0, 6], [7,1], [7, 6]]
end
