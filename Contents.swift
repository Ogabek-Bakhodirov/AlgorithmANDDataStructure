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


// Leet Code - isPalindrome solved without converting into string
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

// Find max number in list
if true {
    var maxNumber = 0
    var array = [1, 2, 4, 5, 94, 3, 4, 98]
    
    func identifyMaxValue(){
        if array.count != 0 {
            if maxNumber < array[0] {
                maxNumber = array[0]
            }
            array.remove(at: 0)
            identifyMaxValue()
        } else {
            print(maxNumber)
        }
    }
    identifyMaxValue()
}



//Yandex Contest
import UIKit

class ViewController: UIViewController {
    
    func setup(){
        let v1 = UIView(frame: .zero)
        v1.frame = CGRect(x: 10, y: 10, width: 300, height: 300)
        v1.backgroundColor = .blue
        self.view.addSubview(v1)
        
        let v2 = UIView(frame: .zero)
        v2.frame = CGRect(x: 100, y: 10, width: 150, height: 150)
        v2.backgroundColor = .red
        v1.addSubview(v2)
        
        let v3 = UIView(frame: .zero)
        v3.frame = CGRect(x: 10, y: 100, width: 150, height: 150)
        v3.backgroundColor = .green
        v1.addSubview(v3)
        
        let v4 = UIView(frame: .zero)
        v4.frame = CGRect(x: 10, y: 10, width: 20, height: 20)
        v4.backgroundColor = .yellow
        v4.transform = CGAffineTransform(scaleX: 1, y: 1)
        v1.addSubview(v4)
    }
}

var viewController = ViewController()
viewController.setup()

// Quicksort
func quicksort(array: [Int]) -> [Int] {
    var sortedArray = array
    if sortedArray.count < 2 {
        return sortedArray
    } else if sortedArray.count == 2 {
        if sortedArray[0] > sortedArray[1] {
            var swappedElement = 0
            swappedElement = sortedArray[0]
            sortedArray[0] = sortedArray[1]
            sortedArray[1] = swappedElement
        }
        return sortedArray
    } else {
        var pivot: [Int] = []
        pivot.append(sortedArray[0])
        var less: [Int] = []
        var great: [Int] = []
        for i in 1...sortedArray.count-1{
            sortedArray[i] < pivot[0] ? less.append(sortedArray[i]) : great.append(sortedArray[i])
        }
        return quicksort(array: less) + pivot + quicksort(array: great)
    }
}

var quicksort = [6, 4, 7 , 3, 19, 2, 1, 3, 12, 21, 65]
quicksort(array: quicksort)


//Yandex task
final class BankAccount: Hashable{
    let id: String
    var amount: Int
    var isFrozen: Bool
    var hashValue: Int {
        return id.hashValue
    }
    
    init(id: String, amount: Int, isFrozen: Bool) {
        self.id = id
        self.amount = amount
        self.isFrozen = isFrozen
    }
    
    static func == (lhs: BankAccount, rhs: BankAccount) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

func transfer(from: BankAccount, to: BankAccount, amount: Int) {
   from.amount -= amount
   to.amount += amount
}

var list: Set<BankAccount> = [BankAccount(id: "1", amount: 200, isFrozen: true),
BankAccount(id: "2", amount: 3, isFrozen: false)]

var foo1: NSObject!
foo1 = NSObject()
var foo2: NSObject = foo1


//Leet Code - Search Insert Position
if true {
    class Solution {
        func searchInsert(_ nums: [Int], _ target: Int) -> Int {
            for (index, element) in nums.enumerated() {
                if element == target {
                    print(index, element)
                    return index
                } 
            }
            
            
            return findEstimatetIndex(nums, target)
        }
        
        func findEstimatetIndex(_ nums: [Int], _ target: Int) -> Int{
            var elementIndex = 0
            var lessThanTarget = -9999999
            for (index, element) in nums.enumerated() {
                if element < target && element > lessThanTarget {
                    lessThanTarget = element
                    elementIndex = index + 1
                }
            }
            return elementIndex
        }
    }

    var solution = Solution()
    solution.searchInsert([-1, 2, 4, 5], 0)
}


// Leet Code - Two Sum
if true {
    class Solution {
        func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
            for num in 0...nums.count - 1 {
                for innerNum in num+1...nums.count - 1 {
                    if nums[num] + nums[innerNum] == target {
                        return [num, innerNum]
                    }
                }
            }
            return [0]
        }
    }
}


