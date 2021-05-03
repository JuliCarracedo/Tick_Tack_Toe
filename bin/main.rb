#!/usr/bin/env ruby

require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

board = Board.new
puts board.board_state

board.get_move 'O', 7

puts board.board_state
puts board.moves_made