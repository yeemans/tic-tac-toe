$move = ""
$game_end = false
#if true, player one's turn, false, player 2
$player_one_turn = true 
$space_filled = 0 #number of spaces filled on board
$total_moves = 0
class Player
    attr_accessor :name
    attr_accessor :symbol
    def initialize()
        puts "What is the player's name?"
        @name = gets
    end
    def get_symbol()
        puts "What is the player's symbol?"
        @symbol = gets
        @symbol = @symbol.gsub("\n", "")
        if @symbol.length != 1
            get_symbol()
        end
    end
    def make_move() #updates the board with player inputs
        puts "\n"
        puts "\n"
        puts"Select a coordinate (a1,a2,a3,b1,b2,b3,c1,c2,c3)"
        $move = gets
        $move = $move.gsub("\n", "")
        
        if $move == "a1" || $move == "b1" || $move == "c1" || $move == "a2" || $move == "b2" || $move == "c2" ||$move == "a3" || $move == "b3" || $move == "c3"
            check_coordinates()
            draw() #draw the board
        else
            make_move() #rerun for valid coordinates
        end
        
    end
end 
def check_coordinates() #fills the cell variables
    $total_moves += 1
    if $move == "a1" && $player_one_turn
        if $a1_filled
            puts ("that spot is taken")
        else
            $a1 = $player1.symbol
            $a1_filled = true
        end
    elsif $move == "a1" && $player_one_turn == false
        if $a1_filled 
            puts ("that spot is taken")
        else
            $a1 = $player2.symbol
            $a1_filled = true
        end
    end
    if $move == "b1" && $player_one_turn
        if $b1_filled
            puts ("that spot is taken")
        else
            $b1 = $player1.symbol
            $b1_filled = true
        end
    elsif $move == "b1" && $player_one_turn == false
        if $b1_filled 
            puts "that spot is taken"
        else
            $b1 = $player2.symbol
            $b1_filled = true
        end
    end
    if $move == "c1" && $player_one_turn
        if $c1_filled
            puts ("that spot is taken")
        else
            $c1 = $player1.symbol
            $c1_filled = true
        end
    elsif $move == "c1" && $player_one_turn == false
        if $c1_filled 
            puts "that spot is taken"
        else
            $c1 = $player2.symbol
            $c1_filled = true
        end
    end
    if $move == "a2" && $player_one_turn
        if $a2_filled
            puts ("that spot is taken")
        else
            $a2 = $player1.symbol
            $a2_filled = true
        end
    elsif $move == "a2" && $player_one_turn == false
        if $a2_filled 
            puts "that spot is taken"
        else
            $a2 = $player2.symbol
            $a2_filled = true
        end
    end
    if $move == "b2" && $player_one_turn
        if $b2_filled
            puts ("that spot is taken")
        else
            $b2 = $player1.symbol
            $b2_filled = true
        end
    elsif $move == "b2" && $player_one_turn == false
        if $b2_filled 
            puts "that spot is taken"
        else
            $b2 = $player2.symbol
            $b2_filled = true
        end
    end
    if $move == "c2" && $player_one_turn
        if $c2_filled
            puts ("that spot is taken")
        else
            $c2 = $player1.symbol
            $c2_filled = true
        end
    elsif $move == "c2" && $player_one_turn == false
        if $c2_filled 
            puts "that spot is taken"
        else
            $c2 = $player2.symbol
            $c2_filled = true
        end
    end
    if $move == "a3" && $player_one_turn
        if $a3_filled
            puts ("that spot is taken")
        else
            $a3 = $player1.symbol
            $a3_filled = true
        end
    elsif $move == "a3" && $player_one_turn == false
        if $a3_filled 
            puts "that spot is taken"
        else
            $a3 = $player2.symbol
            $a3_filled = true
        end
    end
    if $move == "b3" && $player_one_turn
        if $b3_filled
            puts ("that spot is taken")
        else
            $b3 = $player1.symbol
            $b3_filled = true
        end
    elsif $move == "b3" && $player_one_turn == false
        if $b3_filled 
            puts "that spot is taken"
        else
            $b3 = $player2.symbol
            $b3_filled = true
        end
    end
    if $move == "c3" && $player_one_turn
        if $c3_filled
            puts ("that spot is taken")
        else
            $c3 = $player1.symbol
            $c3_filled = true
        end
    elsif $move == "c3" && $player_one_turn == false
        if $c3_filled 
            puts "that spot is taken"
        else
            $c3 = $player2.symbol
            $c3_filled = true
        end
    end

    #switch player turn 
    if $player_one_turn
        $player_one_turn = false
    else
        $player_one_turn = true
    end
    #win conditions for p1
    if $a1 == $player1.symbol && $b1 == $player1.symbol && $c1 == $player1.symbol
        draw()
        $game_end = true
        print "\n" + $player1.name + "won"
        exit!
    end
    if $a2 == $player1.symbol && $b2 == $player1.symbol && $c2 == $player1.symbol
        draw()
        $game_end = true
        print "\n" + $player1.name + "won"
        exit!
    end
    if $a3 == $player1.symbol && $b3 == $player1.symbol && $c3 == $player1.symbol
        draw()
        $game_end = true
        print "\n" + $player1.name + "won"
        exit!
    end
    if $a1 == $player1.symbol && $a2 == $player1.symbol && $a3 == $player1.symbol
        draw()
        $game_end = true
        print "\n" + $player1.name + "won"
        exit!
    end
    if $b1 == $player1.symbol && $b2 == $player1.symbol && $b3 == $player1.symbol
        draw()
        $game_end = true
        print "\n" + $player1.name + "won"
        exit!
    end  
    if $c1 == $player1.symbol && $c2 == $player1.symbol && $c3 == $player1.symbol
        draw()
        $game_end = true
        print "\n" + $player1.name + "won"
        exit!
    end
    if $a1 == $player1.symbol && $b2 == $player1.symbol && $c3 == $player1.symbol
        draw()
        game_end = true
        print "\n" + $player1.name + "won"
        exit!
    end
    if $a3 == $player1.symbol && $b2 == $player1.symbol && $c1 == $player1.symbol
        draw()
        game_end = true
        print "\n" + $player1.name + "won"
        exit!
    end
    #win conditions for p2
    if $a1 == $player2.symbol && $b1 == $player2.symbol && $c1 == $player2.symbol
        draw()
        $game_end = true
        print "\n" + $player2.name + "won"
        exit!
    end
    if $a2 == $player2.symbol && $b2 == $player2.symbol && $c2 == $player2.symbol
        draw()
        $game_end = true
        print "\n" + $player2.name + "won"
        exit!
    end
    if $a3 == $player2.symbol && $b3 == $player2.symbol && $c3 == $player2.symbol
        draw()
        $game_end = true
        print "\n" + $player2.name + "won"
        exit!
    end
    if $a1 == $player2.symbol && $a2 == $player2.symbol && $a3 == $player2.symbol
        draw()
        $game_end = true
        print "\n" + $player2.name + "won"
        exit!
    end
    if $b1 == $player2.symbol && $b2 == $player2.symbol && $b3 == $player2.symbol
        draw()
        $game_end = true
        print "\n" + $player2.name + "won"
        exit!
    end 
    if $c1 == $player2.symbol && $c2 == $player2.symbol && $c3 == $player2.symbol
        draw()
        $game_end = true
        print "\n" + $player1.name + "won"
        exit!
    end
    if $a1 == $player2.symbol && $b2 == $player2.symbol && $c3 == $player2.symbol
        draw()
        game_end = true
        print "\n" + $player1.name + "won"
        exit!
    end
    if $a3 == $player2.symbol && $b2 == $player2.symbol && $c1 == $player2.symbol
        draw()
        game_end = true
        print "\n" + $player1.name + "won"
        exit!
    end
end
def draw()
    row1_whitespace = "    "
    row2_whitespace = "    "
    row3_whitespace = "    "
    if $a1_filled || $b1_filled
        row1_whitespace = "   "
    end
    if $a2_filled || $b2_filled
        row2_whitespace = "   "
    end
    if $a3_filled || $b3_filled
        row3_whitespace = "   "
    end
    #print the board
    print $a1
    print row1_whitespace
    print $b1
    print row1_whitespace
    print $c1
    #start of new row
    print "\n"
    print $a2
    print row2_whitespace 
    print $b2
    print row1_whitespace 
    print $c2
    #start of new row
    print "\n"
    print $a3
    print row3_whitespace
    print $b3
    print row3_whitespace
    print $c3
    if $total_moves == 9
        print("tie")
        exit!
    end
end
$player1 = Player.new
$player1.get_symbol()
$player2 = Player.new
$player2.get_symbol()
while $game_end == false do
    $player1.make_move()
end
#intializing tic tac toe table cells
$a1 = " "
$b1 = " "
$c1 = " "
$a2 = " "
$b2 = " "
$c3 = " "
$a3 = " "
$b3 = " "
$c3 = " "
#making it so thata cell can only be filled once
$a1_filled = false
$b1_filled = false
$c1_filled  = false
$a2_filled = false
$b2_filled = false
$c2_filled = false
$a3_filled = false
$b3_filled = false
$c3_filled = false