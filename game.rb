class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end
  
  def start    
    while !game_over?
      
      # Generate two random numbers between 1 and 20 for player 1
      num1 = rand(1..20)
      num2 = rand(1..20)
      
      # Ask player 1 to answer the math problem
      print @player1.name + ": What is #{num1} + #{num2}? "
      player1_answer = gets.chomp.to_i
      
      # Check if player 1's answer is correct
      if player1_answer == num1 + num2
        puts "Yes! You are correct."
      else
        puts "Wrong! The correct answer is #{num1 + num2}."
        @player1.lose_life
      end
      
      # Print the current number of lives for each player
      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}:#{@player2.lives}/3"
      
      # Check if player 1 is out of lives
      if @player1.out_of_lives?
        puts @player1.name + " is out of lives!"
        break
      end
      puts "----- NEW TURN -----"
      
      # Generate two different random numbers between 1 and 20 for player 2
    
        num1 = rand(1..20)
        num2 = rand(1..20)
      
      
      # Ask player 2 to answer the math problem
      print @player2.name + ": What is #{num1} + #{num2}? "
      player2_answer = gets.chomp.to_i
      
      # Check if player 2's answer is correct
      if player2_answer == num1 + num2
        puts "Correct!"
      else
        puts "Wrong! The correct answer is #{num1 + num2}."
        @player2.lose_life
      end
      
      # Print the current number of lives for each player
      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}:#{@player2.lives}/3"
      
      # Check if player 2 is out of lives
      if @player2.out_of_lives?
        puts @player2.name + " is out of lives!"
        break
      end
      puts "----- NEW TURN -----"
      
    end
    
    # Print the final scores
    puts "\n----- GAME OVER ----"
    
    
    if @player1.lives > @player2.lives
      puts @player1.name + " wins!"
    elsif @player2.lives > @player1.lives
      puts @player2.name + " wins!"
    
    end
  end
  
  def game_over?
    @player1.out_of_lives? || @player2.out_of_lives?
  end
end