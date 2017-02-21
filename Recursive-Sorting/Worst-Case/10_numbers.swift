import Foundation
import QuartzCore

class Sorter{
  var nums:[Int] = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

  func sort_f2(j: Int, temp:Int){
    if(j>=0){
      if(nums[j] > temp){
        nums[j+1] = nums[j]
        nums[j] = temp
        sort_f2(j:j-1,temp:temp)
      }
    }
  }

  func sort_f1(i: Int){
    if (i != nums.count){
      var j:Int = i - 1
      sort_f2(j:j,temp:nums[i])
      sort_f1(i:i+1)
    }
  }

  func start(){
    let start: TimeInterval = CACurrentMediaTime()

    sort_f1(i:0)

    print("\(CACurrentMediaTime() - start)")
  }
}

Sorter().start()
