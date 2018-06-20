func twoSum(_ nums: [Int], target: Int) -> [Int] {
    for (x, one) in nums.enumerated(){
        let value = target - one
        
        if nums.contains(value){
            return [x, nums.index(of: value)!]
        }
    }
    return [0]
}

twoSum([2, 7, 11, 15], target: 9)
