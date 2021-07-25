def alphabetize arr, rev=false
    arr.sort!
end

numbers = [1987,54,871,124,57,89,111,349]

puts alphabetize numbers



#  Sorting with control flow. 
# Write your own method and call it whenever you want!


def alphabetize arr, rev=false
    arr.sort!
        if rev == true
            arr.reverse!
        else
            return arr
        end
    end
    
numbers = [1987,54,871,124,57,89,111,349]

puts alphabetize numbers