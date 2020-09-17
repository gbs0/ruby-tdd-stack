class Game
  
  def initialize
		@state = :initial  	
  end

  def start
  	set_state
  end

  def state
    @state
  end

  private

  def set_state
  	@state = :started
  end

end