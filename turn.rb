require_relative "./question"

class Turn
  def initialize (player)
    @question = Question.new
    @player = player
  end

  def ask_q
    puts "#{@player.name}: #{@question.question_p}"
    guess = gets.chomp
    if @question.correct?(guess)
      puts "Correct answer, you have #{@player.lives} lives left"
      print "----------------------------------------------"
    else
      @player.lose_a_life
      puts "Wrong, you now have #{@player.lives} / 3 left "
      print "----------------------------------------------"
    end
  end
end
