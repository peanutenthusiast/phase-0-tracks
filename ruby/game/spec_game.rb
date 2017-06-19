require_relative 'game'

describe Game do
  let(:game) { Game.new("marvel")}


  it "checks if guessed letter is in array and shows progress" do
    expect(game.check_print("m", @letter)).to eq ["m", "_", "_", "_", "_", "_"]
  end
end