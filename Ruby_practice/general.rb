# check to see if a variable is in range of other variables

a.range?(b,c) #parens are optional in Ruby


# iterate through the array and call on the update_score method for the user to update their scores using iteration
def scoring(array)
    array.each do |user|
        user.update_score
    end
end


# adds unless to this iteration to not update any admin scores who participate
def scoring(array)
    array.each do |user|
        user.update_score unless user.is_admin?
    end
end


# break/if condition
loop do
    coder.practice
    break if coder.oh_one?
end

# one line until statement
coder.practice until coder.oh_one?

# Case statement
def identify_class(obj)
    case obj
        when Hacker
            puts "It's a Hacker!"
        when Submission
            puts "It's a Submission!"
        when TestCase
            puts "It's a TestCase!"
        when Contest
            puts "It's a Contest!"
        else
            puts "It's an unknown model"
    end
end


def factorial(n)
    result = (1..n).reduce(1) { |all,x| all * x }
    yield(result)
end

n = gets.to_i
factorial(n) do |result| 
    puts result
end  

# init empty array
array = Array.new
# init array with an element which is nil
array_1 = Array.new(1)
# init array with 2 elements each with a value of 10
array_2 = Array.new(2, 10)