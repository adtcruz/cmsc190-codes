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
  int nums[] = {100,99,98,97,96,95,94,93,92,91,90,89,88,87,86,85,84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65,64,63,62,61,60,59,58,57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1};
  int a_size = ((sizeof nums)/(sizeof nums[0]));

  CFTimeInterval start = CACurrentMediaTime();

  Sorter *sorterInstance = [[Sorter alloc]init];
  [sorterInstance sort_f1:0 arr:nums arrSize:a_size];

  CFTimeInterval e_time = (CACurrentMediaTime() - start);

  printf("%lf\n", e_time);
}
