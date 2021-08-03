# One line statements do not require an end

puts "Yes!" if yes #one line if conditional

puts "I'ts Ruby!" unless true #one line unless

puts 100 < 101 ? "100 is less than 101" : "100 is greater than 101" #ternary operator

# When/then case statement
case greeting
    when "English" then puts "Hello!"
    when "French" then puts "Bonjour!"
    when "German" then puts "Guten Tag!"
    when "Finnish" then puts "Haloo!"
    else puts "I don't know that language!"
end


# intiate a variable and assign it a value if one doesn't already exist
favorite_language ||= "Ruby"
puts favorite_language


# Recall that we have the boolean operators and (&&) and or (||) in Ruby. The && operator only returns true when the expressions on BOTH SIDES
# of the operator are true; || returns true when ONE or THE OTHER or BOTH of the expressions involved are true.




# Iterate through and only puts the even numbers using one line if statement
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each do |num|
    puts num if num % 2 == 0
end

"L".upto("P") { |letter| puts letter} #prints all the letters capitalized from L to P ascending
"R".downto("A") { |letter| puts letter} #prints all the letters capitalized from R to A descending


# Instead of typing out the .push method name, you can simply use <<,
# the concatenation operator (also known as “the shovel”) to add an element to the end of an array

[1, 2, 3] << 4
# ==> [1, 2, 3, 4]

"Yukihiro " << "Matsumoto"
# ==> "Yukihiro Matsumoto"

alphabet = ["a", "b", "c"]
alphabet << "d"

caption = "A giraffe surrounded by "
caption << "weezards!"