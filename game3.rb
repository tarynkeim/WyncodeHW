def ask_question(setup, options)
	puts setup
	puts options
	gets.chomp.downcase
end

#Mushroom Cup course
def mushroom_cup
place = ["1st place", "2nd place", "3rd place", "4th place", "5th place", "6th place", "7th place", "8th place"]
puts "3, 2, 1 GO!!"
puts "Lap 1"
puts place.sample

mushroom = ask_question("We are off to a good start. There is a mushroom ahead, pick it up?", "Yes or No")
case mushroom
	when "yes"
		puts "We got a turbo boost! Nothing is stopping us now!"
		puts place[2] 
	when "no"
		puts "Oops, we just got passed."
		puts place[3]
	else 
		puts "We missed it! We let Waluigi have it"
		puts place[4]
end

curve = ask_question("There is a curve coming up. What should we do?", "Accelerate, Drop a banana, Keep our pace")
case curve 
	when "accelerate"
		puts "Whoops someone left a sneaky banana peel for us. Spin out!"
		puts place[4]
	when "drop a banana"
		puts "Sorry suckers!"
		puts place[3]
	else "keep our pace"
		puts "We are in last place!"
		puts place[7]
end

puts "Final Lap" 
puts "Let's win this!"

weapon = ask_question("We need to catch up. What item should we use on Wario? Be careful, we only have one of each.", "Green Shell, Bullet Bill, Triple Mushrooms")
case weapon
	when "green shell"
		puts "Great shot! We can beat him."
		puts place[3]
	when "bullet bill"
		puts "Wow! That was great! We are first!"
		puts place[0]
	else "Triple Mushrooms"
		puts "Eat our dust, Wario"
		puts place[3]
end
end


#Leaf Cup course
def leaf_cup
puts "3, 2, 1 GO!!"

end



puts "Hello, it's a-me Mario. Ready to race?"

#Player picks character
character = ask_question("Wa-hoo! Let's-a pick your driver.", "Options: Mario, Luigi, Princess, Yoshi")

case character 
	when "mario"
		puts "Mario: Let's-a go!"
	when "luigi"
		puts "Luigi: I'm-a Luigi, number 1!"
	when "princess"
		puts "Peachy!"
	when "yoshi"
		puts "vwee-voomp"
	else
		puts "That's-a ok, I will drive you. Wa-hoo!"
		character = "mario"
	end
character = character.capitalize
	#Player picks vehicle

vehicle = ask_question("Let's-a pick a vehicle!", "Options: Standard Kart, Bullet Bike, Sprinter, Phantom")

case vehicle
	when "standard kart"
		puts "Good-a choice!"
	when "bullet bike"
		puts "Good-a choice!"
	when "sprinter"
		puts "Good-a choice!"
	when "phantom"
		puts "Good-a choice!"
	else
		puts "Can't-a decide? I will help you."
		vehicle = "standard kart"
	end

course = ask_question("Pick a course", "Options: Mushroom Cup, Leaf Cup")

case course
 when "mushroom cup"
	puts "Let's-a go!"
	mushroom_cup
when "leaf cup"
	puts "Let's-a go!"
	leaf_cup 
else
	puts "Let's-a go to the Mushroom Cup"
	course = mushroom cup
	mushroom_cup	
end


			
		
