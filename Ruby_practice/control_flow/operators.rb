myAge = 36
yourAge = 32

if myAge == 36
    puts "You are 36"
elsif yourAge < myAge
    puts "Younger than you"  
else
    puts "How old are you again?"
end


hungry = false

unless hungry === true
    puts "I'm writing Ruby programs!"
else
    puts "Time to eat!"
end

is_true = 2 != 3

is_false = 2 == 3

# test_1 = 77 != 77
test_1 = false

# test_2 = -4 <= -4
test_2 = true

# test_3 = -44 < -33
test_3 = true

# test_4 = 100 == 1000
test_4 = false

# boolean_1 = 77 < 78 && 77 < 77
boolean_1 = false

# boolean_2 = true && 100 >= 100
boolean_2 = true

# boolean_3 = 2**3 == 8 && 3**2 == 9
boolean_3 = true

# Ruby also has the or operator (||). Ruby’s || is called an inclusive or because it evaluates to true when one or the other or both expressions are true

# boolean_1 = 2**3 != 3**2 || true
boolean_1 = true

# boolean_2 = false || -10 > -9
boolean_2 = false

# boolean_3 = false || false
boolean_3 = false


# Finally, Ruby has the boolean operator not (!). ! makes true values false, and vice-versa.
# boolean_1 = !true
boolean_1 = false

# boolean_2 = !true && !true
boolean_2 = false

# boolean_3 = !(700 / 10 == 70)
boolean_3 = false

# You can combine boolean operators in your expressions. Combinations like
(x && (y || w)) && z
=begin
are not only legal expressions, but are extremely useful tools for your programs.
These expression may take some getting used to, but you can always use parentheses to control the order of evaluation. 
Expressions in parentheses are always evaluated before anything outside parentheses.
=end
# boolean_1 = (3 < 4 || false) && (false || true)
boolean_1 = true

# boolean_2 = !true && (!true || 100 != 5**2)
boolean_2 = false

# boolean_3 = true || !(true || false)
boolean_3 = true

# test_1 should be true
test_1 = (3 == 3) || (4 != 5)

# test_2 = should be true
test_2 = (5 > 3) && (7 < 10)

# test_3 = should be false
test_3 = (5 != 5)