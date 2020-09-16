require_relative 'game'

RSpec.describe Game do
  describe "#start" do
    it "Changes State Machine from :initial to :started" do
      game = Game.new
      expect {
      	game.start
      }.to change { game.state }.from(:initial).to(:started)
    end
  end
end