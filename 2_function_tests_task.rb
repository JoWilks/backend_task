def largest_loss(pricesLst)
    newLst = pricesLst.select{|price| price > 0 }
    min = newLst.min
    max = newLst.max
    return (max - min).round(2)
end

def test_largest_loss(lst, correctResult)
    result = largest_loss(lst)
    if result === correctResult
        puts "Passed- The largets loss of #{lst} is #{correctResult}"
    else 
        puts "Test not passed- The largest loss of #{lst} is not #{result}, it should be #{correctResult}"
    end
end

lst1 = [100,300,400,500,900]
result1 = 800

lst2 = [50,50,50,50,50]
result2 = 0

lst3 = [1.98, 10.2, 15.43, 35.22, 49.1]
result3 = 47.12

lst4 = [-4, -3, -2, -1, 0, 1, 2, 3]
result4 = 2

test_largest_loss(lst1, result1)
test_largest_loss(lst2, result2)
test_largest_loss(lst3, result3)
test_largest_loss(lst4, result4)

