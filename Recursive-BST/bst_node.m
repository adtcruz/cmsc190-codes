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

  if(root == nil){
    //printf("%d inserted.\n",valueToInsert);
    Node *newNode = [[Node alloc] init];
    newNode->value = valueToInsert;
    newNode.left = nil;
    newNode.right = nil;
    newNode.parent = nil;
    root = newNode;
  }
  else{
    if (root->value > valueToInsert){
      //printf("%d is in the left of %d\n",valueToInsert,root->value);
      root.left = [root insertValue: root.left Value:valueToInsert];
      root.left.parent = root;
    }
    else if (root->value < valueToInsert){
      //printf("%d is in the right of %d\n",valueToInsert,root->value);
      root.right = [root insertValue: root.right Value:valueToInsert];
      root.right.parent = root;
    }
  }
  return root;
}

-(Boolean) searchForValue: (Node *) root Value:(int) valueToSearch{

  if(root == nil){
    return false;
  }

  else {
    if(root->value == valueToSearch){
      return true;
    }
    else if(root->value > valueToSearch){
      return [root searchForValue: root.left Value: valueToSearch];
    }
    else if(root->value < valueToSearch){
      return [root searchForValue: root.right Value: valueToSearch];
    }
  }
  return false;
}
@end
