require_relative '../lib/player'

describe Player do
  let(:player) { Player.new('Omar') }
  let(:player2) { Player.new('Julian') }
  describe '#name' do
    it "returns the player's name" do
      expect(player.name).to eql('Omar')
      expect(player2.name).to eql('Julian')
    end
  end
  describe '#token' do
    it "returns the player's token" do
      expect(player.token).to eql('X')
      expect(player2.token).to eql('O')
    end
  end
  describe '#moves_made' do
    it "returns the player's move list" do
      expect(player.moves_made).to eql([])
      player.make_move(1)
      expect(player.moves_made).to eql([1])
    end
  end
  describe '#make_move' do
    it 'adds an element to the move list' do
      expect(player.make_move(3)).to eql([3])
      expect(player2.make_move(3)).to eql([3])
      expect(player2.make_move(4)).to eql([3, 4])
      expect(player2.make_move(7)).to eql([3, 4, 7])
    end
  end
end
