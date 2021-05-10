#spec/player_spec.rb
require_relative "../lib/player.rb"

describe Player do
    player = Player.new('Omar')

    describe "#name" do
      it "returns the player's name" do
        expect(player.name).to eql('Omar')
      end
    end
  end