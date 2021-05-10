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
  describe '#check_winner' do
    it 'returns wither a move is valid on board' do
      expect(judge.check_winner([1, 2, 3])).to eql(true)
      expect(judge.check_winner([9, 8, 1])).to eql(false)
    end
  end
end
