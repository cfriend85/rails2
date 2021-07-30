movies = {
    Legends_of_the_Fall: 10, 
    The_Natural: 9.5
}

puts "What would you like to do? "
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp

case choice
when "add"
    puts "What movie would you like to add? "
        title = gets.chomp
    puts "What rating does the movie have? "
        rating = gets.chomp
        movies[title.to_s] = rating
    when "update"
        puts "Updated!"
    when "display"
        puts "Movies!"
    when "delete"
        puts "Deleted!"
    else
        puts "Error!"
    end 

#  Convert input from string to both a symbol for the title and a an integer for the number so that when added to the hash it's in the correct format
    case choice
    when "add"
        puts "What movie would you like to add? "
            title = gets.chomp.to_sym
        puts "What rating does the movie have? "
            rating = gets.chomp.to_i
        movies[title] = rating
    when "update"
        puts "Updated!"
    when "display"
        puts "Movies!"
    when "delete"
        puts "Deleted!"
    else
        puts "Error!"
    end