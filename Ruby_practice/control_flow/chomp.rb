print "What's your first name?"
first_name = gets.chomp
print "What's your last name?"
last_name = gets.chomp
print "What's your city?"
city = gets.chomp
print "What's your states abbreviation?"
state = gets.chomp

info = "My name is #{first_name} #{last_name}, and I live in #{city}, #{state}"

puts info

print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!
print "What's your last name?"
last_name = gets.chomp
last_name.capitalize!
print "What's your city?"
city = gets.chomp
city.capitalize!
print "What's your states abbreviation?"
state = gets.chomp
state.upcase!

info = "My name is #{first_name} #{last_name}, and I live in #{city}, #{state}"

puts info




print "Hey mister, what's your name!?"
user_input = gets.chomp
user_input.downcase!
if user_input.include?('s')
    user_input.gsub!(/s/, "th")
else
    print "Heeeey, your name has no s in it!"
end
puts "#{user_input}"
