//Grokking Algorithm

// I perform every task inside If, because it helps me to use one var name in another task

// Binary search
if true {
    var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    var answer = 2
    var isReturn = true
    var first = 0
    var last = list.count - 1
    
    
    func binary(){
        while isReturn {
            var midNumber = (first + last) / 2
            if midNumber == answer{
                print(midNumber)
                isReturn = false
            } else if midNumber > answer {
                last = midNumber
            } else if midNumber < answer {
                first = midNumber
            }
        }
    }
    
//    binary()
}

// FizzBuzz
if true {
    var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15]  
    
    for i in list {
        if i % 3 == 0 {
            print("\(i) fizz")
        }
        
        if i % 5 == 0 {
            print("\(i) buzz")
        }
        
        if i % 3 == 0 && i % 5 == 0 {
            print("\(i) FizzBuzz")
        }
    }
}

// Sorting
if true {
    var list = [4, 5, 6, 9, 1, 10, 15, 7, 2, 3, 8, 92, 24, 34, 33] 
    var newOrderedArray: [Int] = []
    
    func findSmallestIndex() -> Int{
        var smallestIndex = 0
        var smallestValue = list[0]
        for i in 0...list.count - 1{
            if smallestValue > list[i] {
                smallestValue = list[i]
                smallestIndex = i
            }
        }
        return smallestIndex
    }
    
    func makeOrderedList(){
        for _ in list {
            var smallestIndex = findSmallestIndex()
            newOrderedArray.append(list[smallestIndex])
            list.remove(at: smallestIndex)   
        }
        print(newOrderedArray)
    }
    
    makeOrderedList()
}

// Find the key 
if true {
    struct Box {
        var boxID: Int
        var hasKey = false
    }
    
    var boxes: [Box] = [
        Box(boxID: 1),
        Box(boxID: 2),
        Box(boxID: 3),
        Box(boxID: 4, hasKey: true),
        Box(boxID: 5),
        Box(boxID: 6)
    ]

    func findKey() -> Int? {
        for i in boxes {
            if i.hasKey {
                return i.boxID
            }
        }
        return nil
    }
    
    findKey()
}

//Find the key by using Recursion
if true {
    struct Box {
        var boxID: Int
        var hasKey = false
    }
    var boxes: [Box] = [
        Box(boxID: 1),
        Box(boxID: 2),
        Box(boxID: 3),
        Box(boxID: 4, hasKey: true),
        Box(boxID: 5),
        Box(boxID: 6)
    ]

    var index = 0
    
    func findKey() -> Int? {
        if boxes[index].hasKey {
            print("I found key. It is located at \(index) - box")
        } else {
            index += 1
            findKey()
        }
        return nil
    }
    
    findKey()
}

// Count number length
func countNumber(_ x: Int) -> Int {
    var count = 0
    var number = x

    while number > 0 {
        print(number)
        number = number / 10
        count += 1
    }

    return count
}

countNumber(100)


// isPalindrome solved without converting into string
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var xNumber = x
        var reversedNumber = 0
        var partOfNumber = 0
        var divisionNumber = 1
        if x < 0 {
            return false
        } else {
            var numberLength = countNumber(xNumber)
            for i in 0...numberLength {
                partOfNumber = xNumber % pow(power: i + 1, of: 10)
                xNumber -= partOfNumber
                partOfNumber /= divisionNumber
                divisionNumber *= 10
                reversedNumber += partOfNumber * pow(power: numberLength - ( i + 1 ), of: 10)
            }
            
            return x == reversedNumber
        }
    }

    func countNumber(_ x: Int) -> Int {
        var count = 0
        var number = x

        while number > 0 {
            number = number / 10
            count += 1
        }
        return count
    }

    func pow(power x: Int, of z: Int) -> Int {
        var number = z
        var result = z
        if x <= 0 {
            return 1
        } else if x == 1 {
            return z
        } else {
            for i in 1...x-1{
                result *= number
            }
            return result   
        }
    }
}

var solution = Solution()
solution.isPalindrome(123)

// Total amount of array of numbers by using recursion

if true {
    var array = [1, 2, 4, 5, 49]
    var totalNumber = 0
    
    func getTotalNumber(){
        if array.count != 0 {
            totalNumber += array[0]
            array.remove(at: 0)
            getTotalNumber()
        } else {
            print(totalNumber, array)
        }
    }
    getTotalNumber()
}

// Write a recursive function to count the number of items in list
if true {
    var array = [1, 2, 4, 5, 49, 3, 4]
    var totalNumberOfItems = 0
    
    func getTotalNumberOfItems(){
        if array.count != 0 {
            totalNumberOfItems += 1
            array.remove(at: 0)
            getTotalNumberOfItems()
        } else {
            print(totalNumberOfItems)
        }
    }
    getTotalNumberOfItems()
}
