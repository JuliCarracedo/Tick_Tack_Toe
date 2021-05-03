#!/usr/bin/env ruby

def check_name
  status = false
  player = ''
  while status == false
    player = gets.chomp
    status = true unless player.empty?
    puts 'Please insert a valid name' unless status
  end
  player
end

puts 'WELCOME TO JULIAN AND DAVID\'S TIC-TAC-TOE'
puts 'Player 1, what\'s your name?'
p1 = check_name

puts 'Player 2, what\'s your name?'
p2 = check_name

def clear
  if Gem.win_platform?
    system 'cls'
  else
    system 'clear'
  end
end

puts "#{p1} will play Xs. #{p2} will play Os"

i = 0
input = 0
status = false

while i < 9
  status = false

  board = '   +---+---+---+
    | 1 | 2 | 3 |
    +---+---+---+
    | 4 | 5 | 6 |
    +---+---+---+
    | 7 | 8 | 9 |
    +---+---+---+'
  puts board

  puts "#{p1}. Make your move. Select an available spot in the board" if i.even?
  puts "#{p2}. Make your move. Select an available spot in the board" unless i.even?
  while status == false
    input = gets.chomp
    status = true if (1..9).include?(input.to_i)
    puts 'Invalid move. Please use an available' unless status
    puts "Your move was #{input}" if status
  end

  clear

  i += 1
end

puts 'IT\'S A TIE'
puts "#{p1} You WIN!"
puts "#{p2} You WIN!"
