import Foundation
import QuartzCore

var nums:[Int] = [10, 1, 4, 3, 2, 9, 5, 6, 8, 7]

var i:Int = 0;
var j:Int = 0;

let start: TimeInterval = CACurrentMediaTime()

for i in 1...nums.count-1{
    var temp:Int = nums[i]
    j = i - 1
    while (j >= 0 && nums[j] > temp){
        nums[j+1] = nums[j]
        nums[j] = temp
        j = j - 1
    }
}

print("\(CACurrentMediaTime() - start)")
