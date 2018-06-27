require 'singleton'
require_relative 'slideable'
require_relative 'board'
require_relative 'stepable'

class Piece
  attr_accessor :pos, :board

  def initialize(board, pos, color)
    @board = board
    @pos = pos
    @color = color
  end

  def valid_moves
    moves
  end
end

class NullPiece < Piece
  include Singleton
  def initialize
  end
end

require_relative './Pieces/queen'
require_relative './Pieces/king'
require_relative './Pieces/bishop'
require_relative './Pieces/rook'
require_relative './Pieces/knight'
require_relative './Pieces/pawn'
