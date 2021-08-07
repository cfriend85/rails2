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