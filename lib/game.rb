require_relative 'player'
require_relative 'rps'
require_relative 'computer'

class Game

  attr_reader :player, :choices, :computer

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @player = player
    @choices = []
    @computer = computer
    @rsp = RSP.new
  end

  def choice
    users_choice = @player.users_choice
    computer_choice = @computer.choice_made
    @choices.push([users_choice, computer_choice])
  end

  def user_computer_choices
    @rsp.responses(choices.last)
  end


end
