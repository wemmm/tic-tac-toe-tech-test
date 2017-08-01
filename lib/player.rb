class Player

# Attribute reader added for testing purposes
  attr_reader :marker

  def initialize
    @marker = "O"
  end

  def change_marker(new_marker)
    @marker = new_marker
  end
end
