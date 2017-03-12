#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface Node:NSObject{
  Node *right;
  Node *left;
  Node *parent;
  int value;
}

-(Node *) insertValue: (Node *) root Value:(int) valueToInsert;
-(Boolean) searchForValue: (Node *) root Value:(int) valueToSearch;

@property (assign) Node *left;
@property (assign) Node *right;
@property (assign) Node *parent;

@end

@implementation Node

@synthesize left;
@synthesize right;
@synthesize parent;

-(Node *) insertValue:(Node *) root Value:(int) valueToInsert{

  Node *newNode = [[Node alloc] init];
  newNode->value = valueToInsert;
  newNode.left = nil;
  newNode.right = nil;
  newNode.parent = nil;

  Node *temp = root;

  if(root == nil){
    //printf("The root is %d.\n",valueToInsert);
    root = newNode;
  }
  else{
    while (temp != nil){
      if (temp->value > valueToInsert){
        //printf("%d is in the left of %d\n",valueToInsert,temp->value);
        //navigate the left side
        if(temp.left == nil){
          //printf("%d is in the left of %d\n",valueToInsert,temp->value);
          newNode.parent = temp;
          temp.left = newNode;
          break;
        }
        else{
          temp = temp.left;
          continue;
        }
      }
      else if(temp->value < valueToInsert){
        //printf("%d is in the right of %d\n",valueToInsert,temp->value);
        //navigate the right side
        if(temp.right == nil){
          //printf("%d is in the right of %d\n",valueToInsert,temp->value);
          newNode.parent = temp;
          temp.right = newNode;
          break;
        }
        else{
          temp = temp.right;
          continue;
        }
      }
    }
  }
  return root;
}

-(Boolean) searchForValue: (Node *) root Value:(int) valueToSearch{

  Node *temp = root;

  if(root == nil){
    return false;
  }

  else {
    while (temp != nil){
      if(temp->value == valueToSearch){
        return true;
      }
      else if (temp->value > valueToSearch){
        if(temp.left == nil){
          return false;
        }
        else {
          temp = temp.left;
          continue;
        }
      }
      else if(temp->value < valueToSearch){
        if(temp.right == nil){
          return false;
        }
        else {
          temp = temp.right;
          continue;
        }
      }
    }
  }
  return false;
}
@end
