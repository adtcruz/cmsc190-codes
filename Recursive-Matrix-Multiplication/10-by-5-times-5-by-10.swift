import Foundation
import QuartzCore

class MatrixMultiplier{

  var results:[[Int]]

  init(dimensionN:Int){
    results = [[Int]](repeating:[Int](repeating:0,count:dimensionN),count:dimensionN)
  }

  func multiplier_f3(i:Int, j:Int, k:Int, dimensionM:Int, partProd:Int, mat1:[[Int]], mat2:[[Int]]) -> Int{
    if(k < dimensionM){
      return self.multiplier_f3(i:i, j:j, k:(k+1), dimensionM:dimensionM, partProd:((mat1[i][k] * mat2[k][j]) + partProd), mat1:mat1, mat2:mat2)
    }
    return partProd
  }

  func multiplier_f2(i:Int, j:Int, dimensionN:Int, dimensionM:Int, mat1:[[Int]], mat2:[[Int]]){
    if(j < dimensionN){
      var partProd:Int = 0
      partProd = self.multiplier_f3(i:i, j:j, k:0, dimensionM:dimensionM, partProd:0, mat1:mat1, mat2:mat2)
      results[i][j] = partProd
      self.multiplier_f2(i:i, j:(j+1), dimensionN:dimensionN, dimensionM:dimensionM, mat1:mat1, mat2:mat2)
    }
  }

  func multiplier_f1(i:Int, dimensionN:Int, dimensionM:Int, mat1:[[Int]], mat2:[[Int]]){
    if(i < dimensionN){
      self.multiplier_f2(i:i, j:0, dimensionN:dimensionN, dimensionM:dimensionM, mat1:mat1, mat2:mat2)
      self.multiplier_f1(i:(i+1), dimensionN:dimensionN, dimensionM:dimensionM, mat1:mat1, mat2:mat2)
    }
  }

  func get_results(i:Int, dimensionN:Int, dimensionM:Int, mat1:[[Int]], mat2:[[Int]]) -> [[Int]]{
    self.multiplier_f1(i:i, dimensionN:dimensionN, dimensionM:dimensionM, mat1:mat1, mat2:mat2)
    return results
  }
}

var dimensionN = 10
var dimensionM = 5

var mat1:[[Int]] = [[Int]](repeating:[Int](repeating:0,count:dimensionM),count:dimensionN)
var mat2:[[Int]] = [[Int]](repeating:[Int](repeating:0,count:dimensionN),count:dimensionM)
var result:[[Int]] = [[Int]](repeating:[Int](repeating:0,count:dimensionN),count:dimensionN)

var i:Int = 0
var j:Int = 0
var k:Int = 0
var l:Int = 0

var MultiplierInstance = MatrixMultiplier(dimensionN:dimensionN)

//randomise content
for i in 0...(dimensionN - 1){
  for j in 0...(dimensionM - 1){

    mat1[i][j] = Int(arc4random_uniform(UInt32(10001)))

    if(arc4random()%2 == 1){
      mat1[i][j] = mat1[i][j] * -1
    }
  }
}

for i in 0...(dimensionM - 1){
  for j in 0...(dimensionN - 1){

    mat2[i][j] = Int(arc4random_uniform(UInt32(10001)))

    if(arc4random()%2 == 1){
      mat2[i][j] = mat2[i][j] * -1
    }
  }
}

let start: TimeInterval = CACurrentMediaTime()

result = MultiplierInstance.get_results(i:0, dimensionN:dimensionN, dimensionM:dimensionM, mat1:mat1, mat2:mat2)

print("\(CACurrentMediaTime() - start)")
