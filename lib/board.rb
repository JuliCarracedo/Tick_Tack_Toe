class Board
  attr_reader :board_state, :moves_made

  def initialize
    @template_arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @moves_made = []
    @arr = @template_arr
    @board_state = set_board
  end

  def get_move(token, move, player)
    index = move - 1
    @arr[index / 3][index % 3] = token
    @board_state = set_board
    @moves_made << move
    player.make_move(move)
  end

  private

  def set_board
    "        +---+---+---+
        | #{@arr[0][0]} | #{@arr[0][1]} | #{@arr[0][2]} |
        +---+---+---+
        | #{@arr[1][0]} | #{@arr[1][1]} | #{@arr[1][2]} |
        +---+---+---+
        | #{@arr[2][0]} | #{@arr[2][1]} | #{@arr[2][2]} |
        +---+---+---+"
  end
end
