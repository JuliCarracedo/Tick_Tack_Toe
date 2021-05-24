#!/usr/bin/env ruby

require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/judge'

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
until input
  input = judge.valid_name gets.chomp
  puts 'Please add a valid name' unless input
end
p1 = Player.new input

input = false
puts 'Player 2, please introduce your name'
until input
  input = judge.valid_name gets.chomp
  puts 'Please add a valid name' unless input
end
p2 = Player.new input

board = Board.new

players = [p1, p2]
i = 0

while i <= 9
  puts board.board_state
  input = false
  puts "#{players[i % 2].name}, Please select your tile"

  until input
    input = judge.valid_move(gets.chomp.to_i, board.moves_made)
    puts 'Please select a valid tile' unless input
  end

  board.get_move(players[i % 2].token, input, players[i % 2])

  outcome = judge.check_winner(players[i % 2].moves_made)

  clear

  if outcome
    puts "Game Over! #{players[i % 2].name} wins!"
    puts board.board_state
    break
  end

  i += 1

  next unless i == 9

  puts 'Draw Game, try again'
  puts board.board_state
  break

end
