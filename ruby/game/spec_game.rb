require_relative 'game'

describe Game do
  let(:game) { Game.new("marvel")}

  it "guesses are limited, related to word length" do
    expect(game.max_tries).to eq(12)
  end

  it "checks if input has been entered already" do
    game.guess = [r]
    expect(game.guess.include?("r")).to be true
  end

  it "checks if guessed letter is in array and shows progress" do
    expect(game.check_print("m", @letter)).to eq ["m", "_", "_", "_", "_", "_"]
  end

end