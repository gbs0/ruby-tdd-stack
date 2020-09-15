RSpec.describe StateMachine do
  describe "#start" do
    it "Changes State Machine from :initial to :started" do
      sm = StateMachine.new
      expect {
      	sm.start
      }.to change { sm.state }.from(:initial).to(:started)
    end
  end
end