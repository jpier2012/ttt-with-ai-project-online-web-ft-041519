class Player
  attr_reader :token

  def initialize(token)
    self.instance_variable_set(:@token, token)
  end
end
