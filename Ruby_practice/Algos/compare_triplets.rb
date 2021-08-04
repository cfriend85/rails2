def compareTriplets(a, b)
    alice = 0
    bob = 0
    for i in 0...b.length
        if a[i] > b[i]
            alice += 1
        elsif b[i] > a[i]
            bob += 1
        end
    end
    [alice, bob]
end