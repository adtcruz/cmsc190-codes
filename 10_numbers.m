#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

int main(){
  int nums[] = {10, 1, 4, 3, 2, 9, 5, 6, 8, 7};
  int a_size = ((sizeof nums)/(sizeof nums[0]));
  int i = 0;
  int j = 0;
  CFTimeInterval startTime = CACurrentMediaTime();
  for(i=0;i<a_size-1;i++){
    
  }
  /*

  for i in 1...nums.count-1{
      var temp = nums[i]
      j = i - 1
      while (j >= 0 && nums[j] > temp){
          nums[j+1] = nums[j]
          nums[j] = temp
          j = j - 1
      }
  }

  print("Execution completed in \(CACurrentMediaTime() - start) seconds")
  */
}
