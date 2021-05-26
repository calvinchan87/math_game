class Game
  attr_accessor :next_player, :current_player

  def initialize(player_one, player_two)
    @next_player = player_two
    @current_player = player_one
    puts "Game Initialized!"
  end

  def play
    while @next_player.lives > 0
      puts "----- NEW TURN -----"
      new_question = Question.new
      puts "#{@current_player.name}: " + new_question.ask
      guess = gets.chomp.to_i
      if guess == new_question.sum
        puts "Correct :)"
      else
        puts "Incorrect :("
        @current_player.loss
      end
      puts "#{@current_player.name}: #{@current_player.lives}/3 vs #{@next_player.name}: #{@next_player.lives}/3"
      placeholder = @current_player
      @current_player = @next_player
      @next_player = placeholder
    end

    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end