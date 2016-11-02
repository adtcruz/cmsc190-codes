#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

int main(){
  int nums[] = {10, 1, 4, 3, 2, 9, 5, 6, 8, 7};
  int a_size = ((sizeof nums)/(sizeof nums[0]));
  int i = 0;
  int j = 0;

  CFTimeInterval start = CACurrentMediaTime();

  for(i=0;i<a_size-1;i++){
    int temp = nums[i];
    j = i - 1;
    while(j >= 0 && nums[j] > temp){
      nums[j+1] = nums[i];
      nums[j] = temp;
      j = j - 1;
    }
  }

  CFTimeInterval e_time = (CACurrentMediaTime() - start);

  printf("Execution completed %lf seconds\n", e_time);
}
