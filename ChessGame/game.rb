require_relative 'display'
require_relative 'board'
require_relative 'cursor'

class Game
  attr_reader :board, :display

  def initialize
    @board = Board.new
    @display = Display.new(@board)
  end

  def play
    while true
      puts "make a move"
      display.cursor.get_input
      display.render
    end
  end
end
