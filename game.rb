def say(string)
	puts "=>#{string}"  
end

ans = 'y'

def game(choice,cpu)
	if choice == 'r' && cpu == 2
		say "You picked Rock" 
		say "and the Computer chose Paper" 
		say"You Lose."
	elsif choice == 'r' && cpu == 3
		say "You picked Rock" 
		say "and the Computer chose Scissors" 
		say "You Win!"
	elsif choice == 'r' && cpu == 1
		say "You picked Rock" 
		say "and the Computer chose Rock" 
		say "You Tie!"
	elsif choice == 's' && cpu == 2
		say "You picked Scissors" 
		say "and the Computer chose Paper" 
		say "You Win!"
	elsif choice == 's' && cpu == 3
		say "You picked Scissors" 
		say "and the Computer chose Scissors" 
		say "You Tie!"
	elsif choice == 's' && cpu == 1
		say "You picked Scissors" 
		say "and the Computer chose Rock" 
		say "You Lose!"
	elsif choice == 'p' && cpu == 2
		say "You picked Paper" 
		say "and the Computer chose Paper" 
		say "You Tie!"
	elsif choice == 'p' && cpu == 3
		say "You picked Paper" 
		say "and the Computer chose Scissors" 
		say "You Lose!"
	elsif choice == 'p' && cpu == 1
		say "You picked Paper" 
		say "and the Computer chose Rock" 
		say "You Win!"
	else
		say "Please pick again you may only pick r, p, or s"
	end
end

while ans == 'y'  
	prng = Random.new 
	say "Let's play rock paper scissors!"
	say "Play one: (R/P/S)"
	choice = gets.chomp.downcase
	cpu = prng.rand(1..3)
	game(choice,cpu)
	say "Do you want to play again? Y/N"
	ans = gets.chomp
end	


