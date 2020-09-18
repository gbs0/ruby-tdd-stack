require_relative "lib/window"

class Game
  
  def initialize
		@state = :initial
    @window = GameWindow.new
  end


  def draw
    # @window.draw
  end

  def start
  	set_state
  end

  def state
    @state
  end

  private
  
  def set_enemy
    @enemy = []
  end

  def set_state
  	@state = :started
  end

end