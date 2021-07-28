symbol_hash = {
    :one => 1,
    :two => 2,  
    :three => 3,
}

# Symbols make good hash keys for a few reasons:
# They’re immutable, meaning they can’t be changed once they’re created;
# Only one copy of any symbol exists at a given time, so they save memory;
# Symbol-as-keys are faster than strings-as-keys because of the above two reasons.


# iterate over the strings array and push it's strings as symbols into the symbols array

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []
strings.each do |s|
    symbols.push(s.to_sym)
end

print symbols


# .intern will also convert a string to a symbol.

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []
strings.each do |s|
    symbols.push(s.intern)
end

print symbols

#  HASH ROCKET

movies = {
    :Batman_Begins => "Bruce Wayne learns how to become Batman",
    :The_Dark_Knight => "Batman engages in a cat and mouse game with The Joker for rule over Gotham",
    :The_Dark_Knight_Rises => "The only thing between the madman Bane and Gotham's end is Batman."
}

print movies[:Batman_Begins]


#  Without HASH ROCKET

movies = {
    Batman_Begins: "Bruce Wayne learns how to become Batman",
    The_Dark_Knight: "Batman engages in a cat and mouse game with The Joker for rule over Gotham",
    The_Dark_Knight_Rises: "The only thing between the madman Bane and Gotham's end is Batman."
}

print movies[:Batman_Begins]



# Symbols vs Strings Comparison

# String time: 0.007104434000211768 seconds.
# Symbol time: 0.005037392002122942 seconds.

require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
    100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
    100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."


# Selective

movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 5,
    truman_show: 4,
    red_dawn: 1.5,
    skyfall: 4,
    alex_cross: 2,
    uhf: 1,
    lion_king: 3.5
}
# Add your code below!

good_movies = movie_ratings.select {|movie, rating| rating > 3}

print good_movies


# select by key or value and iterate over it

movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 3,
    truman_show: 4,
    red_dawn: 1.5,
    skyfall: 4,
    alex_cross: 2,
    uhf: 1,
    lion_king: 3.5
}

movie_ratings.each_key {|title| puts title}

movie_ratings.each_value {|rating| puts rating}