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
  int nums[] = {10, 1, 4, 3, 2, 9, 5, 6, 8, 7};
  int a_size = ((sizeof nums)/(sizeof nums[0]));

  CFTimeInterval start = CACurrentMediaTime();

  Sorter *sorterInstance = [[Sorter alloc]init];
  [sorterInstance sort_f1:0 arr:nums arrSize:a_size];

  CFTimeInterval e_time = (CACurrentMediaTime() - start);

  printf("%lf\n", e_time);
}
