def puts_1_to_10
    (1..10).each { |i| puts i }
end

puts_1_to_10

def greeting
    puts "Howdy partner!"
end

greeting

def array_of_10
    puts (1..10).to_a
end

array_of_10

def cubertino(n)
    puts n ** 3
end

cubertino(8)

def what_up(greeting, *friends) # the * tells the function to look for an unknown number of this argument. May be 1, may be many.
    friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")



def add num1, num2
    return num1 + num2
end



def greeter(name)
    return "Hello, #{name}!"
end

def by_three?(num)
    if num % 3 == 0
        return true
    else
        return false
    end
end