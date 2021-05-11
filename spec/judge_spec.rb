require_relative '../lib/judge'

describe Judge do
  let(:judge) { Judge.new }
  describe '#valid_name' do
    it 'returns false if a name is empty' do
      expect(judge.valid_name('')).to eql(false)
    end
    it 'returns the name if it\'s not empty' do  
      expect(judge.valid_name('Omar')).to eql('Omar')
    end
  end
  describe '#valid_move' do
    it 'returns the move made if it\'s valid' do
      expect(judge.valid_move(1, [2..8])).to eql(1)
    end
    it 'returns false if a move is out of range' do
      expect(judge.valid_move(-3, [2..8])).to eql(false)
    end
    it 'returns false if the imput is not a number' do
      expect(judge.valid_move('hello', [2..8])).to eql(false)
    end
  end
  describe '#check_winner' do
    it 'returns true if a set of moves gives you the win' do
      expect(judge.check_winner([1, 2, 3])).to eql(true)
    end
    it 'returns false if a set of moves doesn\'t give you the win' do
      expect(judge.check_winner([9, 8, 1])).to eql(false)
    end
  end
end
