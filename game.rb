require_relative "./turn"
require_relative "./question"
require_relative "./player"
require "byebug"

class Game

  def initialize
    @players = []
    game_over = false
  end

  def turn_change
    if @current_player.dead == true
      if @current_player == @players[0]
      winner = @players[1]
    else
      winner = @players[0]
    end
      puts "Game over man, game over. #{winner.name} wins with #{winner.lives} lives remaining"
    end
    return if @current_player.dead == true
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end

  def begin
    while @players.length < 2
      print "Player #{@players.length + 1}, what is your name? >> "
      id = @players.length + 1
      name = gets.chomp
      @players.push(Player.new(name, id))
      puts "Welcome to the game #{name}, you have 3 lives"
    end

    @current_player = @players.first

    while @current_player.lives > 0
    puts Turn.new(@current_player).ask_q
    turn_change
    end

  end
end

Game.new.begin
