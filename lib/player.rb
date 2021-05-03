class Player 

    attr_reader :name
    attr_reader :token
    @@instances = 0

    def initialize (name)
        puts 'Only create 2 players' if @@instances > 1
        return nil if @@instances > 1 
        @name = name
        @token = @@instances == 0 ? 'X' : 'O' 
        @@instances += 1
    end


end