class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def homepage
    render({ :template => "game_templates/rules.html.erb" })
  end

  def play_rock
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "tie"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render({ :template => "game_templates/user_rock.html.erb" })
  end

  def play_paper
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "win"
    elsif @comp_move == "paper"
      @outcome = "tie"
    else
      @outcome = "lose"
    end

    render({ :template => "game_templates/user_paper.html.erb" })
  end

  def play_scissors
    @comp_move = ["rock", "paper", "scissors"].sample
    if @comp_move == "rock"
      outcome = "lose"
    elsif @comp_move == "paper"
      outcome = "win"
    else
      "tie"
    end

    render({ :template => "game_template/user_scissors.html.erb" })
  end
end
