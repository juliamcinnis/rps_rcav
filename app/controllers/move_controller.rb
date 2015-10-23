class MoveController < ApplicationController 

	def rock

@user_move = ["Rock"].sample 
@computer_move = ["Rock", "Paper", "Scissors"].sample

if @user_move == @computer_move
	@result = "It's a tie!"
	@button_color = "warning"

elsif @user_move == "Rock" && @computer_move == "Paper"
	@result = "You lose!"
	@button_color = "danger"

elsif @user_move == "Rock" && @computer_move == "Scissors"
	@result = "You win!"
	@button_color = "success"

end
		render ("rock.html.erb")
	end

	def paper

@user_move = ["Paper"].sample 
@computer_move = ["Rock", "Paper", "Scissors"].sample

if @user_move == @computer_move
	@result = "It's a tie!"
		@button_color = "warning"

elsif @user_move == "Paper" && @computer_move == "Rock"
	@result = "You win!"
	@button_color = "success"

elsif @user_move == "Paper" && @computer_move == "Scissors"
	@result = "You lose!"
	@button_color = "danger"

end
		render ("paper.html.erb")
	end

	def scissors

@user_move = ["Scissors"].sample 
@computer_move = ["Rock", "Paper", "Scissors"].sample

if @user_move == @computer_move
	@result = "It's a tie!"
		@button_color = "warning"

elsif @user_move == "Scissors" && @computer_move == "Paper"
	@result = "You win!"
		@button_color = "success"

elsif @user_move == "Scissors" && @computer_move == "Rock"
	@result = "You lose!"
	@button_color = "danger"

end

		render ("scissors.html.erb")
	end
end


# <a href="/rock">Rock</a>
# <a href="/paer">Paper</a>
# <a href="/scissors">Scissors</a>
 
