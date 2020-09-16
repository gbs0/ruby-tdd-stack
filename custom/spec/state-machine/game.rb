class Game
  
  def initialize
		state = :inital  	
  end

  def start
  	set_state
  end

  private

  def set_state
  	state = :started
  end

end