# puts "What is your name?"
# name = gets.chomp
# until name =~ /^[a-zA-Z]+$/
# 	puts "That is not a valid name. Please enter your name."
# 	name = gets.chomp
# end

# puts "What is your age?"
# age = gets.chomp
# until age =~ /^[1-9]+$/
# 	puts "That is not a valid age. Please enter your age."
# 	age = gets.chomp
# end

# puts "Hello, your name is  #{name} and you are #{age} years old"

###Ed's version with pair programming


uppers = "A".."Z"
lowers = "a".."z"
letters = uppers.to_a + lowers.to_a

all_letters = false

until 
	puts "What's your name?"
	name = gets
	exit if nam.nil?

	name = name.chomp
	name_array = name.split('')


	all_letters = name_array.all? do |char|
	letters.include? char
	end
end

puts "How old are you?"
age = gets

exit if age.nil?