#Hashes
empty_hash = Hash.new

# default value of every key is 1
default_hash = Hash.new(1)

# Initialize a hash with the variable name hackerrank and having the key-value pairs
hackerrank = {"simmy" => 100, "vivmbbs" => 200}

# Add a key-value pair to the hash
hackerrank.store(543121, 100)

# check hashes keys and only keep the key and it's value if the key is an integer
hackerrank.keep_if {|key| key.is_a?Integer}

# check the hashes keys and delete them and their respective values if the key is even
hackerrank.delete_if {|key| key % 2 == 0}


# Variable Arguments
# Write a method named full_name that generates the full names of people given their first name
# followed by some variable number of middle names, followed by their last name
def full_name(first, *rest)
    rest.reduce(first) {|x, y| x + " " + y}
end