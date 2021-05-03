require_relative 'board.rb'
require_relative 'player.rb'

class Judge
    def initialize
    end
    def valid_name (valid)
        return valid unless valid.empty?
        false
    end
end
