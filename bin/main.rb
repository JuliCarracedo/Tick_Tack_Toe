puts "WELCOME TO JULIAN AND DAVID'S TIC-TAC-TOE"
puts "Player 1, what's your name?"
p1 = gets.chomp
puts "Player 2, what's your name?"
p2 = gets.chomp

puts "#{p1} will play Xs. #{p2} will play Os"
i = 0
input = 0
status = false
while i<9

    status = false
    puts "Player 1. Make your move. Select an available spot in the board" if i.even?
        until status
            input = gets.chomp
            status true 
            puts "Invalid move. Please use an available" unless status
            puts "Your move was #{input}" if status
            status = false
        end

    status = false
    puts "Player 2. Make your move. Select an available spot in the board" unless i.even?
        until status
           
            input = gets.chomp
            status = true if (1..9).include?(input)
            puts "Invalid move. Please use an available" unless status
            puts "Your move was #{input}" if status
        end
    system 'clear'
    i += 1
end

 puts "IT'S A TIE"