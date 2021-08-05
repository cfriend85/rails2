def diagonalDifference(arr)
    len = arr.length
    main = 0
    sec = 0
    for i in 0...len
        main += arr[i][i]
        sec += arr[i][len-i-1]
    end
    (main - sec).abs
end