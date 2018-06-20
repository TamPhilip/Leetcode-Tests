//: Playground - noun: a place where people can play

func isPalindrome(_ x: Int) -> Bool {
    let number = "\(x)"
    var array : [Character]  = []
    number.forEach { (character) in
        array.append(character)
    }
    if array.count % 2 != 0{
        let characterCount = (array.count / 2)
        array.remove(at: characterCount)
    }
    var fromZero = 0
    var fromMax = array.count - 1
    while fromZero < fromMax{
        if array[fromZero] != array[fromMax]{
            return false
        }
        fromZero += 1
        fromMax -= 1
    }
    return true
}

//Actual Solution
func Palindrome(_ y: Int) -> Bool {
    var x = y
    if y < 0 ||  (y % 10 == 0 && y != 0){
        return false
    }
    var revertedNumber = 0
    while x > revertedNumber{
        revertedNumber = revertedNumber * 10 + x % 10
        x /= 10
    }
    
    return revertedNumber == x || x == revertedNumber/10
}

Palindrome(101)
