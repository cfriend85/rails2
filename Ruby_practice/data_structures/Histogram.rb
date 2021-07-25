puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }


puts "Input some text"
text = gets.chomp
words = text.split
print words

frequencies = Hash.new(0)


# Iterate over and increase count of words
puts "Enter a phrase you'd like to analyze: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each do |word| 
frequencies[word] += 1 
end



# Sorting the Hash

puts "Enter a phrase you'd like to analyze: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each { |word| frequencies[word] += 1 }

frequencies = frequencies.sort_by do |word, count|
    count
end

frequencies.reverse!



# Iterates over the words array printing the word and it's frequency
puts "Enter a phrase you'd like to analyze: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each { |word| frequencies[word] += 1 }

frequencies = frequencies.sort_by do |word, count|
    count
end

frequencies.reverse!

frequencies.each { |word, frequency| puts word + " " + frequency.to_s }