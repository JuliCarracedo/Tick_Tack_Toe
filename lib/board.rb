class Board
    attr_reader :board_state
    attr_reader :moves_made
    attr_reader :moves_made_p1
    attr_reader :moves_made_p2

    @@template_arr = [ [ 1, 2, 3 ], [ 4, 5, 6 ], [ 7, 8, 9 ] ]

    def initialize
        @moves_made = []
        @moves_made_p1 = []
        @moves_made_p2 = []
        @arr = @@template_arr
        @board_state =  set_board
    end

    def get_move( token, move )
        case move
            when 1 
                @arr[0][0] = token
            when 2
                @arr[0][1] = token
            when 3
                @arr[0][2] = token
            when 4
                @arr[1][0] = token
            when 5
                @arr[1][1] = token
            when 6
                @arr[1][2] = token
            when 7
                @arr[2][0] = token
            when 8
                @arr[2][1] = token
            when 9
                @arr[2][2] = token
        end 
        @board_state = set_board
        @moves_made<<move
        token == 'X' ? moves_made_p1<<move : moves_made_p2<<move
    end

    private
    def set_board
        new_board= "        +---+---+---+
        | #{ @arr[0][0] } | #{ @arr[0][1] } | #{ @arr[0][2] } |
        +---+---+---+
        | #{ @arr[1][0] } | #{ @arr[1][1] } | #{ @arr[1][2] } |
        +---+---+---+
        | #{ @arr[2][0] } | #{ @arr[2][1] } | #{ @arr[2][2] } |
        +---+---+---+"
        return new_board
    end


end