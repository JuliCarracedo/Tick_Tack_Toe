require_relative '../lib/judge'

describe Player do
  let(:judge) { Judge.new }
  describe '#valid_name' do
    it 'returns wither a move is valid on board' do
      expect(judge.valid_name('')).to eql(false)
      expect(judge.valid_name('Omar')).to eql('Omar')
    end
  end
  describe '#valid_move' do
    it 'returns wither a move is valid on board' do
      expect(judge.valid_move(1, [2..8])).to eql(1)
      expect(judge.valid_move(-3, [2..8])).to eql(false)
    end
  end
end
