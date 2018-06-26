require 'singleton'
require_relative 'slideable'
require_relative 'bishop'

class Piece
  attr_accessor :pos
  
  def initialize(board, pos, color)
    @board = board
    @pos = pos
    @color = color
  end

  def valid_moves

  end
end

class NullPiece < Piece
  include Singleton
end
