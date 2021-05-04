class Player 

    attr_reader :name
    attr_reader :token
    attr_reader :moves_made
    @@instances = 0

    def initialize (name)
        return nil if @@instances > 1 
        @moves_made= []
        @name = name
        @token = @@instances == 0 ? 'X' : 'O' 
        @@instances += 1
    end

    def make_move (move)
        @moves_made << move
    end

end