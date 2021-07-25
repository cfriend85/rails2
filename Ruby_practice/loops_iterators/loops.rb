# While 

i = 0
while i < 5
    puts i
    i = i + 1
end

i = 1
while i < 51 do
    print i
    i += 1
end

# Until

counter = 1
until counter > 10
    puts counter
    counter += 1
end

i = 1
until i == 51 do
    print i
    i += 1
end

# For

for num in 1..15
    puts num
end

for num in 1..50
    print num
end

# Loop Do 

i = 20
loop do
i -= 1
    print "#{i} "
    break if i <= 0
end

i = 0
loop do
i += 1
    print "Ruby! "
    break if i == 30
end


# .each method
odds = [1,3,5,7,9]

odds.each do |num|
  print num * 2
end

# .times - tells it to print "Goulet" 6 times. 
6.times { print "Goulet" }

30.times {print "Ruby!" }