class Players::Human < Player
  def move(input)
    puts "Please input"
    g = gets
    puts g
    binding.pry
  end

end
