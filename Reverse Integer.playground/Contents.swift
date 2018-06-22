import Foundation

import Foundation

func reverse(_ x: Int) -> Int {
    
    var number = x
    var reversed : Int = 0
    var negative : Bool = false
    
    if x < 0{
        negative = true
        number *= -1
    }
    while number > 0{
        reversed *= 10
        reversed += (number % 10)
        number /= 10
    }
    if negative == true{
        reversed *= -1
    }
    
    if Double(reversed) > (pow(2, 31) - 1) || Double(reversed) < pow(-2, 31){
        return 0
    }
    return reversed
}

reverse(123)
reverse(-123)
reverse(120)
reverse(1534236469)
