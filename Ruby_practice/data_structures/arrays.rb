demo_array = [100, 200, 300, 400, 500]

print  demo_array[2]

# 2 D

multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

multi_d_array.each { |x| puts "#{x}\n" }

# Hashes

pets = Hash.new # creates an empty hash - {}
pets["Layla"] = "Dog" # adds this key:value pair to the hash
puts pets["Layla"]

# Iterating

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
    "Marge" => "mom",
    "Lisa" => "sister",
    "Maggie" => "sister",
    "Abe" => "grandpa",
    "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

languages.each do |language|
    puts language
end

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each { |sub_array| sub_array.each { |element| puts element }}

# Iterating over Hashes

secret_identities = {
    "The Batman" => "Bruce Wayne",
    "Superman" => "Clark Kent",
    "Wonder Woman" => "Diana Prince",
    "Freakazoid" => "Dexter Douglas"
}
    
secret_identities.each do |hero, name| 
    puts "#{hero}: #{name}"
end



# init empty array
array = Array.new
# init array with an element which is nil
array_1 = Array.new(1)
# init array with 2 elements each with a value of 10
array_2 = Array.new(2, 10)



# Find and insert


def neg_pos(arr, index)
    # return the element of the array at the position `index` from the end of the list
    # Clue : arr[-index]
    arr[-index]
end

def first_element(arr)
    # return the first element of the array
    arr.first
end

def last_element(arr)
    # return the last element of the array
    arr.last
end

def first_n(arr, n)
    # return the first n elements of the array
    arr.take(n)
end

def drop_n(arr, n)
    # drop the first n elements of the array and return the rest
    arr.drop(n)
end


def end_arr_add(arr, element)
    # Add `element` to the end of the Array variable `arr` and return `arr`
    arr.push(element)
end

def begin_arr_add(arr, element)
    # Add `element` to the beginning of the Array variable `arr` and return `arr`
    arr.unshift(element)
    
end

def index_arr_add(arr, index, element)
    # Add `element` at position `index` to the Array variable `arr` and return `arr`
    arr.insert(index, element)
end

def index_arr_multiple_add(arr, index)
    # add any two elements to the arr at the index
    arr.insert(index, 1,2)
end



# Delete elements


def end_arr_delete(arr)
    # delete the element from the end of the array and return the deleted element
    arr.pop
    
end

def start_arr_delete(arr)
    # delete the element at the beginning of the array and return the deleted element
    arr.shift
end

def delete_at_arr(arr, index)
    # delete the element at the position #index
    arr.delete_at(index)
    
end

def delete_all(arr, val)
    # delete all the elements of the array where element = val
    arr.delete(val)
    
end


# Array selection

def select_arr(arr)
    # select and return all odd numbers from the Array variable `arr`
        arr.select {|x| x % 2 != 0}
end

def reject_arr(arr)
    # reject all elements which are divisible by 3
        arr.reject {|x| x % 3 == 0}
end

def delete_arr(arr)
    # delete all negative elements
    arr.delete_if {|x| x < 0}
end

def keep_arr(arr)
    # keep all non negative elements ( >= 0)
    arr.keep_if {|x| x >= 0}
end