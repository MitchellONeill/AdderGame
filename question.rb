require "pry"
class Question

  attr_reader :question_p, :answer

  def initialize
    num_1 = rand(20) + 1
    num_2 = rand(20) + 1
    @answer = num_1 + num_2
    @question_p = "What is #{num_1} + #{num_2}?"
  end

  def correct?(guess)
   guess.to_i == @answer
  end

end


# test = Question.new
# puts test.instance_of? Question
# # puts test.num_1
# # puts test.num_2
# puts test.answer
# puts test.question_p
# puts test.correct?(11)

