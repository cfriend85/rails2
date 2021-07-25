puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
    if word != redact
    print word + " "
    else
    print "REDACTED "
    end
end

# getting the users input

puts "Enter some text: "
text = gets.chomp

puts "Enter words to redact: "
redact = gets.chomp

words = text.split(" ")
words.each { |word| 
    if word == redact
    print "REDACTED "
    else
    print word + " "
end }
