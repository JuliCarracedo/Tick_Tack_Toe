#!/usr/bin/env ruby

require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/judge.rb'

def clear
    if Gem.win_platform?
      system 'cls'
    else
      system 'clear'
    end
end

judge = Judge.new

puts 'Welcome to David and Julian\'s Tic Tac Toe game'

puts 'Player 1, please introduce your name'
input = false
while !input
    input = judge.valid_name gets.chomp
    puts 'Please add a valid name' unless input
end
p1 = Player.new input

input = false
puts 'Player 2, please introduce your name'
while !input
    input = judge.valid_name gets.chomp
    puts 'Please add a valid name' unless input
end
p2 = Player.new input

board = Board.new 

players=[p1, p2]
i=0
while i<9
    puts board.board_state
    input = false
    puts "#{players[i%2].name}, Please select your tile"
    # while !input
    #     input= judge.valid_move(gets.chomp ,players[i%2].token)
    #     puts `Please select a valid tile` unless input
    # end
    #board.get_move(input)
    i += 1
    sleep 2
    clear
end