class Game
  WIN_COMBINATIONS = [ [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2] ]

  attr_accessor :board, :player_1, :player_2

  def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
  end

  def current_player
    binding.pry
    @player_1 if @player_1.token == "X" && @board.turn_count.even?
    @player_2 if @player_2.token == "X" && @board.turn_count.even?
  end

  def won?
    WIN_COMBINATIONS.find do |combo|
      combo.all? { |i| @board.cells[i] == "X" } || combo.all? { |i| @board.cells[i] == "O" }
    end
  end

  def draw?
    @board.full? && !won?
  end

  def over?
    @board.full? || won?
  end

  def winner
    won?[0]
  end

  def turn

  end

end
