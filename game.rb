puts "after all your hardwork you've become Batman!"

puts "Who will be your sidekick?"
puts "Batgirl or Robin"
ally = gets.chomp.downcase

if ally == "robin"
	put "Robin: Holy rusted metal, Batman!"
elsif ally == "batgirl"
	puts "Batgirl: Suit me up, Uncle Alfred!"
else
	puts "Fine, I'll pick one for you."
	ally = "robin"
	end
ally = ally.capitalize	
	##ally has to make sense
	
	puts "Awsome, Lets get your sidekick a weapon to defend themselves!"
	puts "Option: batarang, fists, flashlight"
	weapon = gets.chomp.downcase

	case weapon
	when "batarang"
		puts"#{ally}: Awesome! A Batarang! Thanks Batman!"
	when "fists"
		puts"#{ally}: I don't need a weapon! I will just use my fists like you!"
	when"flashlight"
		puts"#{ally}: Uh...Thanks? I'll make sure to keep a light on you."
	else
		puts "Don't be selfish. Share your toys with your sidekick."
		weapon = "batarang"
	end

	puts "Who should we fight first?"
	puts "Options: Joker, Penguin, Riddler"
	enemy = gets.chomp.downcase
	
	until valid_enemies.include?(enemy)
		puts ["Huh?", "What", "Que"].sample
		#. sample to get random selection from array
		puts "Options: Joker, Penguin, Riddler"
		enemy = gets.chomp.downcase

		case enemy
		when "riddler"
			puts "Riddler: Puzzle me this, Batman!"
			
		when "joker"
			puts "Ha ha ha ha ha..."
			
		when "penguin"
			puts "Rweh rweh rweh"
			
		else
			puts "This shouldn't happen!"
	end

