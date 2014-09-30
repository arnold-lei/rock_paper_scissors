def say(string)
	puts "=>#{string}"  
end

ans = 'y'

def game(choice,cpu)
	if choice == 'r' && cpu == 2
		say "You picked Rock and the Computer chose Paper you Lose."
	elsif choice == 'r' && cpu == 3
		say "You picked Rock and the Computer chose Scissors you Win!"
	elsif choice == 'r' && cpu == 1
		say "You picked Rock and the Computer chose Rock you Tie!"
	elsif choice == 's' && cpu == 2
		say "You picked Scissors and the Computer chose Paper you Win!"
	elsif choice == 's' && cpu == 3
		say "You picked Scissors and the Computer chose Scissors you Tie!"
	elsif choice == 's' && cpu == 1
		say "You picked Scissors and the Computer chose Rock you Lose!"
	elsif choice == 'p' && cpu == 2
		say "You picked Paper and the Computer chose Paper you Tie!"
	elsif choice == 'p' && cpu == 3
		say "You picked Paper and the Computer chose Scissors you Lose!"
	elsif choice == 'p' && cpu == 1
		say "You picked Paper and the Computer chose Rock you Win!"
	end
end

while ans == 'y' do 
	prng = Random.new 
	say "Let's play rock paper scissors!"
	say "Play one: (R/P/S)"
	choice = gets.chomp
	cpu = prng.rand(1..3)
	game(choice,cpu)
	say "Do you want to play again? Y/N"
	ans = gets.chomp
end	


