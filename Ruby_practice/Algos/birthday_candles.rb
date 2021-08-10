def birthdayCakeCandles(candles)
    candles.sort()
    count = 0
    max = 0
    candles.each do |num|
        if num > max
            max = num
            count = 1
        elsif num == max
            count += 1
        end
    end
    count 
end