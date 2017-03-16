import Foundation
import QuartzCore

class Node {
  var value:Int?
  var right:Node?
  var left:Node?
  var parent:Node?

  init(){
    self.right = nil
    self.left = nil
    self.parent = nil
    //self.value = nil
  }

  func insertValue(root:Node?, valueToInsert:Int) -> Node {
    var newNode = Node()
    newNode.value = valueToInsert

    var temp = root

    if (root == nil) {
      print("\(valueToInsert) is the root")
      return newNode
    }
    else{
      while (temp != nil) {
        if var tempVal = temp?.value{
          if(tempVal > valueToInsert){
            if(temp?.right == nil){
              print("\(valueToInsert) is on the right of \(tempVal)")
              newNode.parent = temp
              temp?.right = newNode
              break
            }
            else{
              temp = temp?.right
            }
          }
          else if(tempVal < valueToInsert){
            if(temp?.left == nil){
              print("\(valueToInsert) is on the left of \(tempVal)")
              newNode.parent = temp
              temp?.left = newNode
              break
            }
            else{
              temp = temp?.left
            }
          }
        }
        }
      while(temp?.parent != nil){
        temp = temp?.parent
      }
    }
    return temp!
  }
}
