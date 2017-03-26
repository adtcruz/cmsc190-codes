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

    if (root == nil) {
      var newNode = Node()
      newNode.value = valueToInsert
      //print("\(valueToInsert) inserted")
      return newNode
    }
    else{
      if var tempVal = root?.value{
        if(tempVal > valueToInsert){
          //print("\(valueToInsert) is on the left of \(tempVal)")
          root?.left = root?.insertValue(root:root?.left,valueToInsert:valueToInsert)
          root?.left?.parent = root
        }
        else if(tempVal < valueToInsert){
          //print("\(valueToInsert) is on the right of \(tempVal)")
          root?.right = root?.insertValue(root:root?.right,valueToInsert:valueToInsert)
          root?.right?.parent = root
        }
      }
    }
    return root!
  }

  func searchValue(root:Node?, valueToSearch:Int) -> Bool {

    if(root == nil){
      return false
    }

    else {
      var tree = Node()
      if var tempVal = root?.value {
        if(tempVal == valueToSearch){
          return true
        }

        else if(tempVal > valueToSearch){
          return tree.searchValue(root:root?.left,valueToSearch:valueToSearch)
        }

        else if(tempVal < valueToSearch){
          return tree.searchValue(root:root?.right,valueToSearch:valueToSearch)
        }
      }
    }
    return false
  }
}

var root:Node?

var tree = Node()

//root
root = tree.insertValue(root:root,valueToInsert:52)
//1st level
root = tree.insertValue(root:root,valueToInsert:22)
root = tree.insertValue(root:root,valueToInsert:74)
//2nd level
root = tree.insertValue(root:root,valueToInsert:14)
root = tree.insertValue(root:root,valueToInsert:41)
root = tree.insertValue(root:root,valueToInsert:64)
root = tree.insertValue(root:root,valueToInsert:85)
//3rd level
root = tree.insertValue(root:root,valueToInsert:90)
root = tree.insertValue(root:root,valueToInsert:80)
root = tree.insertValue(root:root,valueToInsert:68)
root = tree.insertValue(root:root,valueToInsert:59)
root = tree.insertValue(root:root,valueToInsert:47)
root = tree.insertValue(root:root,valueToInsert:35)
root = tree.insertValue(root:root,valueToInsert:18)
root = tree.insertValue(root:root,valueToInsert:6)
//4th level
root = tree.insertValue(root:root,valueToInsert:4)
root = tree.insertValue(root:root,valueToInsert:10)
root = tree.insertValue(root:root,valueToInsert:16)
root = tree.insertValue(root:root,valueToInsert:20)
root = tree.insertValue(root:root,valueToInsert:28)
root = tree.insertValue(root:root,valueToInsert:38)
root = tree.insertValue(root:root,valueToInsert:45)
root = tree.insertValue(root:root,valueToInsert:49)
root = tree.insertValue(root:root,valueToInsert:57)
root = tree.insertValue(root:root,valueToInsert:61)
root = tree.insertValue(root:root,valueToInsert:66)
root = tree.insertValue(root:root,valueToInsert:72)
root = tree.insertValue(root:root,valueToInsert:78)
root = tree.insertValue(root:root,valueToInsert:83)
root = tree.insertValue(root:root,valueToInsert:88)
root = tree.insertValue(root:root,valueToInsert:94)
//5th level
root = tree.insertValue(root:root,valueToInsert:100)
root = tree.insertValue(root:root,valueToInsert:92)
root = tree.insertValue(root:root,valueToInsert:89)
root = tree.insertValue(root:root,valueToInsert:87)
root = tree.insertValue(root:root,valueToInsert:84)
root = tree.insertValue(root:root,valueToInsert:82)
root = tree.insertValue(root:root,valueToInsert:79)
root = tree.insertValue(root:root,valueToInsert:76)
root = tree.insertValue(root:root,valueToInsert:73)
root = tree.insertValue(root:root,valueToInsert:71)
root = tree.insertValue(root:root,valueToInsert:67)
root = tree.insertValue(root:root,valueToInsert:65)
root = tree.insertValue(root:root,valueToInsert:62)
root = tree.insertValue(root:root,valueToInsert:60)
root = tree.insertValue(root:root,valueToInsert:58)
root = tree.insertValue(root:root,valueToInsert:55)
root = tree.insertValue(root:root,valueToInsert:51)
root = tree.insertValue(root:root,valueToInsert:48)
root = tree.insertValue(root:root,valueToInsert:46)
root = tree.insertValue(root:root,valueToInsert:42)
root = tree.insertValue(root:root,valueToInsert:39)
root = tree.insertValue(root:root,valueToInsert:36)
root = tree.insertValue(root:root,valueToInsert:33)
root = tree.insertValue(root:root,valueToInsert:25)
root = tree.insertValue(root:root,valueToInsert:21)
root = tree.insertValue(root:root,valueToInsert:19)
root = tree.insertValue(root:root,valueToInsert:17)
root = tree.insertValue(root:root,valueToInsert:15)
root = tree.insertValue(root:root,valueToInsert:12)
root = tree.insertValue(root:root,valueToInsert:8)
root = tree.insertValue(root:root,valueToInsert:5)
root = tree.insertValue(root:root,valueToInsert:1)

let start: TimeInterval = CACurrentMediaTime()

if(tree.searchValue(root:root,valueToSearch:74)){
}

print("\(CACurrentMediaTime() - start)")
