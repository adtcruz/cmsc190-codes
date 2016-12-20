#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

int main(){
  int nums[] = {70,59,61,86,43,90,97,95,44,55,71,72,21,69,46,48,72,78,23,29,26,38,10,67,66,9,14,42,82,60,72,5,9,41,33,26,54,12,98,69,17,68,8,14,27,75,48,97,7,18,93,42,6,30,91,13,15,31,73,46,6,85,29,47,14,27,12,17,25,8,59,54,55,79,42,34,84,46,29,78,35,48,27,17,4,50,58,27,32,70,37,98,13,85,2,65,72,25,19,77};
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

  printf("%lf\n", e_time);
}
