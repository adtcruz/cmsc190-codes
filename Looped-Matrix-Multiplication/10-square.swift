import Foundation
import QuartzCore

var dimensionSize = 10

var mat1:[[Int]] = [[Int]](repeating:[Int](repeating:0,count:dimensionSize),count:dimensionSize)
var mat2:[[Int]] = [[Int]](repeating:[Int](repeating:0,count:dimensionSize),count:dimensionSize)
var result:[[Int]] = [[Int]](repeating:[Int](repeating:0,count:dimensionSize),count:dimensionSize)

var i:Int = 0
var j:Int = 0
var k:Int = 0
var l:Int = 0

//randomise content
for i in 0...(dimensionSize - 1){
  for j in 0...(dimensionSize - 1){

    mat1[i][j] = Int(arc4random_uniform(UInt32(10001)))
    mat2[i][j] = Int(arc4random_uniform(UInt32(10001)))

    if(arc4random()%2 == 1){
      mat1[i][j] = mat1[i][j] * -1
    }

    if(arc4random()%2 == 1){
      mat2[i][j] = mat2[i][j] * -1
    }
  }
}

let start: TimeInterval = CACurrentMediaTime()

for i in 0...(dimensionSize - 1){
  for j in 0...(dimensionSize - 1){

    var partProd:Int = 0

    for k in 0...(dimensionSize - 1){
      partProd = (mat1[i][k] * mat2[k][j]) + partProd
    }

    result[i][j] = partProd
  }
}

print("\(CACurrentMediaTime() - start)")
