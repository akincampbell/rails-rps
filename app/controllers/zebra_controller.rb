class ZebraController < ApplicationController
  def giraffe
    @random_move = ["rock", "paper", "scissors"].sample
    if (@random_move == "rock")
      @outcome = "We tied!"
    elsif (@random_move == "paper")
      @outcome = "We lost!"
    else
      @outcome = "We won!"
    end
    render({ :template => "game_templates/play_rock"})
  end

  def elephant
    @random_move = ["rock", "paper", "scissors"].sample
    if (@random_move == "paper")
      @outcome = "We tied!"
    elsif (@random_move == "scissors")
      @outcome = "We lost!"
    else
      @outcome = "We won!"
    end
    render({ :template => "game_templates/play_paper"})
  end

  def lion
    @random_move = ["rock", "paper", "scissors"].sample
    if (@random_move == "rock")
      @outcome = "We lost!"
    elsif (@random_move == "paper")
      @outcome = "We won!"
    else
      @outcome = "We tied!"
    end
    render({ :template => "game_templates/play_scissors"})
  end

  def rules
    render({ :template => "game_templates/rules"})
  end
end
