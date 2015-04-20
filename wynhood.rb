def ask_question(setup, options)
	puts setup
	puts options
	gets.chomp.downcase
end


def fifty_street
hardware_store = ask_question("Welcome to 50th street. Your challenge is to go into the local sketchy hardware store and meet the manager, Scattini. How do you greet him?", "Hello sir, Hola como estas, Sak Pase")
	
case hardware_store  
when "hello sir"
	puts "Just not going to even try, huh?"
	$street_cred_zero = 0
when "hola como estas"
	puts "Wrong hood, amigo!"
	$street_cred_zero = -2
when "sak pase"
	puts "Hey Hey! N’ap boule!"
	$street_cred_zero = 3
else
	puts "Too shy to go in the sketchy hardware store?"
	$street_cred_zero= -3
	end
	puts "You earned #{$street_cred_zero} street cred, bro."
end

def fifty_one
	entrepreneur = ask_question("Oh, now look at this wonderful Entrepreneur running a small business out of a tent on the road. What would you like to buy?", "Industrial sized toilet paper, Cleaning supplies, Basket of fake flowers")

	case entrepreneur
	when "industrial sized toilet paper"
		puts "Yup. never know when you’ll need that shit."
		$street_cred_one = 3
	when "cleaning supplies"
		puts "At least you didn’t send the maid to buy these."
		$street_cred_one = 2
	when "basket of fake flowers"
		puts "Really? (-1 creds)"
		$street_cred_one = -2
	else
		puts "Fine. Don’t support the community. See if I care."
		$street_cred_one = -3
	end
	puts "You earned #{$street_cred_one} street cred, bro."
end

def fifty_two
	mike = ask_question("Meet Big Mike. Big Mike is 6’1 but his dreads make him 6'6. Big Mike: “I got some green if you need it” (He’s offering you weed).", "Yes or No")

	case mike
	when "yes"
		puts "Now you are part the posse"
		$street_cred_two = 4
	when "no"
		puts "Are you po-po?"
		$street_cred_two = -2
	else
		puts "You don't belong on this block."
		$street_cred_two = -3
	end
	puts "You earned #{$street_cred_two} street cred, bro."
end

def fifty_three
	buena_vista = ask_question("There’s a crowd of people at the local basketball court and a few 5 on 5 games going. These guys are pretty good.", "Sit and Watch, Lace up, Play alone, Talk shit")

	case buena_vista
	when "sit and watch"
		puts "No one’s looking for a babysitter."
		$street_cred_three = -2
	when "lace up"
		puts "Don't be a jerk when they dunk on you, k?"
		$street_cred_three = 3
	when "play alone"
		puts "Practice? This is not practice!"
		$street_cred_three = -1
	when "talk shit"
		puts "Now you got your ass kicked."
		$street_cred_three = -3
	else 
		puts "Ok, it is your first time around it can be intimidating. Next time you better lace up"
		$street_cred_three = 2
	end
	puts "You earned #{$street_cred_three} street cred, bro."
end


def fifty_four 
	chef_creole = ask_question("Chef Creole- This is the best local food around, famous for it’s Haitian Cuisine. What do you order?", "Chicken Fingers, Oxtail, Salad, Rice and peas")

	case chef_creole
	when "chicken fingers"
		puts "Too safe, tourist. Get out of our hood."
		$street_cred_four = -1
	when "oxtail"
		puts "Yeahhhhhhhh. Bon apetit!"
		$street_cred_four = 3
	when "salad"
		puts "Eskize mwen? Is this a joke?"
		$street_cred_four = -2
	when "rice and peas"
		puts "That’s cool. We dig vegetarians here too."
		$street_cred_four = 2
	else
		puts "McDonalds is right around the corner"
		$street_cred_four = -3
	end
	puts "You earned #{$street_cred_four} street cred, bro."
end

puts "You may think you know Wynwood. Art galleries, awesome food, and new tech, right? Yeah, well, not so much. To really know Wynwood like a local, you have to venture out. Go where the locals live and complete missions to gain street cred."
puts "Let's see if you can earn enough street cred to get initiated into Wynhood with your own G-name"
puts "First head north on NW 2nd to 50th street for your first challenge."
fifty_street

puts "Not so scary huh? Let's dig deeper into Wynhood and make a stop at 51st street."
fifty_one

puts "Looks like you made it out of there alive. Head to 52nd street."
fifty_two

puts "Almost done, next stop 53rd street."
fifty_three

puts "You should be almost a G now. But first let's see what 54th street has in store for you."
fifty_four



puts "You have made it out of Wynhood. Let's see your Wynhood street cred."

final_street_cred = ($street_cred_zero + $street_cred_one + $street_cred_two + $street_cred_three+ $street_cred_four)
puts "Your final street cred is #{final_street_cred}"

g_name= ["Blazin Rascal", "Baby Willie", "Papa Smurf", "Brother Doc", "ILL LUV", "Mo’ Large", "Salty Skillz", "Hard Grillz"]

if final_street_cred <= 0
	puts "DOA: How are you even reading this? You’ve already been shot."
elsif final_street_cred <=3
	puts "Unacceptable: Do not pass go. Do not collect $200. Take your ass back to Nebraska, you’ll never survive Wynhood."
elsif final_street_cred <= 5
	puts "Tolerated Hipster: You can drive through Wynhood. Both hands on the wheel and don’t look up til you hit Panther Coffee."
elsif final_street_cred <= 7
	puts "We need you, you need us: Only stop if you know a guy. Only know a guy if you’re buying weed."
elsif final_street_cred <= 9
	puts "You're a baby G: Take yourself into Wynhood and get yourself a G mentor! You’re almost there!"
elsif final_street_cred >= 10
	puts "G Status: Congratulations. You earned yourself a G Name. In Wynhood you are now known as '#{g_name.sample.upcase}'!"
else
	puts "How did you mess this up. Go back and start again."
end


