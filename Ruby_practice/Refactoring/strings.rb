favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

# String interpolation

favorite_things.each do |thing|
    puts "I love #{thing}!"
end


# one life if conditional
puts "One is less than two!" if 1 < 2


# Ternary
puts 1 < 2 ? "One is less than two!" : "One is not less than two."



# Case statement for strings from user input
puts "What's your favorite language?"
language = gets.chomp

case language
when "Ruby"
    puts "Ruby is great for web apps!"
when "Python"
    puts "Python is great for science."
when "JavaScript"
    puts "JavaScript makes websites awesome."
when "HTML"
    puts "HTML is what websites are made of!"
when  "CSS"
    puts "CSS makes websites pretty."
else
    puts "I don't know that language!"
end


# conditional assignment
favorite_animal ||= "Eagle"

# Implicit return
def square num
    num * num
end

# Times method instead of a for loop
3.times do 
    puts "I'm a refactoring master!"
end