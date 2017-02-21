#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface Sorter:NSObject
- (void) sort_f1: (int) i arr:(int[]) nums arrSize:(int) a_size;
- (void) sort_f2: (int) j temp:(int) temp arr:(int[]) nums;
@end

@implementation Sorter
- (void) sort_f1: (int) i arr:(int[]) nums arrSize:(int) a_size{
  if(i != a_size){
    int j = i - 1;
    [self sort_f2:j temp:nums[i] arr:nums];
    [self sort_f1:i+1 arr:nums arrSize:a_size];
  }
}

- (void) sort_f2: (int) j temp:(int) temp arr:(int[]) nums{
  if(j>=0){
    if(nums[j] > temp){
      nums[j+1] = nums[j];
      nums[j] = temp;
      [self sort_f2:j-1 temp:temp arr:nums];
    }
  }
}
@end

int main(){
  int nums[] = {70,59,61,86,43,90,97,95,44,55,71,72,21,69,46,48,72,78,23,29,26,38,10,67,66,9,14,42,82,60,72,5,9,41,33,26,54,12,98,69,17,68,8,14,27,75,48,97,7,18,93,42,6,30,91,13,15,31,73,46,6,85,29,47,14,27,12,17,25,8,59,54,55,79,42,34,84,46,29,78,35,48,27,17,4,50,58,27,32,70,37,98,13,85,2,65,72,25,19,77};
  int a_size = ((sizeof nums)/(sizeof nums[0]));

  CFTimeInterval start = CACurrentMediaTime();

  Sorter *sorterInstance = [[Sorter alloc]init];
  [sorterInstance sort_f1:0 arr:nums arrSize:a_size];

  CFTimeInterval e_time = (CACurrentMediaTime() - start);

  printf("%lf\n", e_time);
}
