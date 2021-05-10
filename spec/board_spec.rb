require_relative '../lib/board'
require_relative '../lib/player'

describe Board do
  let(:board) { Board.new }
  let(:grid) do
    "        +---+---+---+
        | 1 | 2 | 3 |
        +---+---+---+
        | 4 | 5 | 6 |
        +---+---+---+
        | 7 | 8 | 9 |
        +---+---+---+"
  end
  describe '#board_state' do
    it 'Returns the current board' do
      expect(board.board_state).to eql(grid)
    end
  end
  describe '#moves_made' do
    it 'Returns the moves made' do
      expect(board.moves_made).to eql([])
    end
  end
  describe '#get_move' do
    it 'Returns the moves made' do
      board.get_move('X', 1, Player.new('Julian'))
      expect(board.moves_made).to eql([1])
      board.get_move('O', 3, Player.new('Omar'))
      expect(board.moves_made).to eql([1, 3])
    end
  end
end
