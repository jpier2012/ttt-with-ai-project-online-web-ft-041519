class Board
  attr_accessor :cells

  def initialize
    @cells = Array.new(9, " ")
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def display
    c = @cells
    puts " #{c[0]} | #{c[1]} | #{c[2]} "
    puts "-----------"
    puts " #{c[3]} | #{c[4]} | #{c[5]} "
    puts "-----------"
    puts " #{c[6]} | #{c[7]} | #{c[8]} "
  end

  # takes in the user's input 1 - 9 as a string, looks up the cell value at that position
  def position(integer_string)
    @cells[integer_string.to_i - 1]
  end

  # takes 2 arguments - 1st is a position to occupy, the 2nd is the player object (human or computer)
  # when you update the index, set it equal to the token of the player by calling #token
  def update(integer_string, player)
    @cells = player.token
  end

  # checks if the @cells array is full
  def full?
    @cells.all? { |c| c != " " }
  end

  def turn_count
    binding.pry
    @cells.count { |x| x == "X" || x == "O" }
  end

  def taken?(integer_string)
    position(integer_string) == "X" || position(integer_string) == "O"
  end

  def valid_move?(integer_string)
    !taken?(integer_string) && /[0-9]/.match(integer_string)
  end

end
