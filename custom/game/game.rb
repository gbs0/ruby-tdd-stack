class Game
  
  def initialize
		@state = :initial
    @window = GameWindow.new
  end

  def update

  end

  def draw
    @enemy = GameEnemy.new
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