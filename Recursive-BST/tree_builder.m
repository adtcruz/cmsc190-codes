#import "bst_node.m"

int main(){
  Node *bsTree = [[Node alloc] init];
  Node *treeRoot = nil;


  CFTimeInterval start = CACurrentMediaTime();

  //add root
  treeRoot = [bsTree insertValue: treeRoot Value:52];
  //1st-level leaves
  treeRoot = [bsTree insertValue: treeRoot Value:22];
  treeRoot = [bsTree insertValue: treeRoot Value:74];
  //2nd-level
  treeRoot = [bsTree insertValue: treeRoot Value:14];
  treeRoot = [bsTree insertValue: treeRoot Value:41];
  treeRoot = [bsTree insertValue: treeRoot Value:64];
  treeRoot = [bsTree insertValue: treeRoot Value:85];
  //3rd-level
  treeRoot = [bsTree insertValue: treeRoot Value:90];
  treeRoot = [bsTree insertValue: treeRoot Value:80];
  treeRoot = [bsTree insertValue: treeRoot Value:68];
  treeRoot = [bsTree insertValue: treeRoot Value:59];
  treeRoot = [bsTree insertValue: treeRoot Value:47];
  treeRoot = [bsTree insertValue: treeRoot Value:35];
  treeRoot = [bsTree insertValue: treeRoot Value:18];
  treeRoot = [bsTree insertValue: treeRoot Value:6];
  //4th-level
  treeRoot = [bsTree insertValue: treeRoot Value:4];
  treeRoot = [bsTree insertValue: treeRoot Value:10];
  treeRoot = [bsTree insertValue: treeRoot Value:16];
  treeRoot = [bsTree insertValue: treeRoot Value:20];
  treeRoot = [bsTree insertValue: treeRoot Value:28];
  treeRoot = [bsTree insertValue: treeRoot Value:38];
  treeRoot = [bsTree insertValue: treeRoot Value:45];
  treeRoot = [bsTree insertValue: treeRoot Value:49];
  treeRoot = [bsTree insertValue: treeRoot Value:57];
  treeRoot = [bsTree insertValue: treeRoot Value:61];
  treeRoot = [bsTree insertValue: treeRoot Value:66];
  treeRoot = [bsTree insertValue: treeRoot Value:72];
  treeRoot = [bsTree insertValue: treeRoot Value:78];
  treeRoot = [bsTree insertValue: treeRoot Value:83];
  treeRoot = [bsTree insertValue: treeRoot Value:88];
  treeRoot = [bsTree insertValue: treeRoot Value:94];
  //5th-level
  treeRoot = [bsTree insertValue: treeRoot Value:100];
  treeRoot = [bsTree insertValue: treeRoot Value:92];
  treeRoot = [bsTree insertValue: treeRoot Value:89];
  treeRoot = [bsTree insertValue: treeRoot Value:87];
  treeRoot = [bsTree insertValue: treeRoot Value:84];
  treeRoot = [bsTree insertValue: treeRoot Value:82];
  treeRoot = [bsTree insertValue: treeRoot Value:79];
  treeRoot = [bsTree insertValue: treeRoot Value:76];
  treeRoot = [bsTree insertValue: treeRoot Value:73];
  treeRoot = [bsTree insertValue: treeRoot Value:71];
  treeRoot = [bsTree insertValue: treeRoot Value:67];
  treeRoot = [bsTree insertValue: treeRoot Value:65];
  treeRoot = [bsTree insertValue: treeRoot Value:62];
  treeRoot = [bsTree insertValue: treeRoot Value:60];
  treeRoot = [bsTree insertValue: treeRoot Value:58];
  treeRoot = [bsTree insertValue: treeRoot Value:55];
  treeRoot = [bsTree insertValue: treeRoot Value:51];
  treeRoot = [bsTree insertValue: treeRoot Value:48];
  treeRoot = [bsTree insertValue: treeRoot Value:46];
  treeRoot = [bsTree insertValue: treeRoot Value:42];
  treeRoot = [bsTree insertValue: treeRoot Value:39];
  treeRoot = [bsTree insertValue: treeRoot Value:36];
  treeRoot = [bsTree insertValue: treeRoot Value:33];
  treeRoot = [bsTree insertValue: treeRoot Value:25];
  treeRoot = [bsTree insertValue: treeRoot Value:21];
  treeRoot = [bsTree insertValue: treeRoot Value:19];
  treeRoot = [bsTree insertValue: treeRoot Value:17];
  treeRoot = [bsTree insertValue: treeRoot Value:15];
  treeRoot = [bsTree insertValue: treeRoot Value:12];
  treeRoot = [bsTree insertValue: treeRoot Value:8];
  treeRoot = [bsTree insertValue: treeRoot Value:5];
  treeRoot = [bsTree insertValue: treeRoot Value:1];

  CFTimeInterval e_time = (CACurrentMediaTime() - start);

  printf("%lf\n", e_time);

  return 0;
}
