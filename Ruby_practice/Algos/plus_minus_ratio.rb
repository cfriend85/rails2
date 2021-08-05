def plusMinus(arr)
    pos = 0
    neg = 0
    zero = 0
    arr.each do |num|
        pos += 1 if num > 0
        neg += 1 if num < 0
        zero += 1 if num == 0
    end
    
    puts pos.to_f / arr.count #if you want a number to not be a whole number (integer) you need to set one of the to be a float
    puts neg.to_f / arr.count #for this is is giving 0.3333333333333333
    puts zero.to_f / arr.count

end