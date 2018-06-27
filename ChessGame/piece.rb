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

require_relative 'queen'
require_relative 'king'
require_relative 'bishop'
require_relative 'rook'
require_relative 'knight'
require_relative 'pawn'
