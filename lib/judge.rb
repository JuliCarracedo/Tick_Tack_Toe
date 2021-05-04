require_relative 'board.rb'
require_relative 'player.rb'

class Judge

    def initialize
    end

    def valid_name (name)
        return name unless name.empty?
        false
    end

    def valid_move (move, array)
        if (1..9).include? move
            if array.include? move
                'Tile alredy used'
            else
                move
            end
        else
            'Please add a valid move'
        end
    end
    
    private
    def compare_custom (arr_game, arr_win)
        counter= 0
        arr_win.each |i| do
            counter += 1 if arr_game.include?(i)
        end
        counter == 3 ? true : false
    end

    public
    def check_winner(arr)
        winner_scenarios = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
        for scenarios in winner_scenarios
            return true if compare_custom(arr,scenarios)
        end
        false
    end
end
