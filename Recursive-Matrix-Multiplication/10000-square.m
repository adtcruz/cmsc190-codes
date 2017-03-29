#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface MatrixMultiplier:NSObject
- (void) multiplier_f1: (int) i dimensionN: (int) dimensionN dimensionM: (int) dimensionM mat1: (int **) mat1 mat2: (int **) mat2 results: (int **) results;
- (void) multiplier_f2: (int) j i: (int) i dimensionN: (int) dimensionN dimensionM: (int) dimensionM mat1: (int **) mat1 mat2: (int **) mat2 results: (int **) results;
- (int) multiplier_f3: (int) k j: (int) j i: (int) i dimensionM: (int) dimensionM partProd: (int) partProd mat1: (int **) mat1 mat2: (int **) mat2;
@end

@implementation MatrixMultiplier

- (void) multiplier_f1: (int) i dimensionN: (int) dimensionN dimensionM: (int) dimensionM mat1: (int **) mat1 mat2: (int **) mat2 results: (int **) results{
  if(i < dimensionN){
    [self multiplier_f2: 0 i: i dimensionN: dimensionN dimensionM: dimensionM mat1: mat1 mat2: mat2 results: results];
    [self multiplier_f1: i+1 dimensionN: dimensionN dimensionM: dimensionM mat1: mat1 mat2: mat2 results: results];
  }
}

- (void) multiplier_f2: (int) j i: (int) i  dimensionN: (int) dimensionN dimensionM: (int) dimensionM mat1: (int **) mat1 mat2: (int **) mat2 results: (int **) results{
  if (j < dimensionN){
    int partProd = 0;
    partProd = [self multiplier_f3: 0 j: j i: i dimensionM: dimensionM partProd: partProd mat1: mat1 mat2: mat2];
    results[i][j] = partProd;
  }
}

- (int) multiplier_f3: (int) k j: (int) j i: (int) i dimensionM: (int) dimensionM partProd: (int) partProd mat1: (int **) mat1 mat2: (int **) mat2{
  if (k < dimensionM){
    return [self multiplier_f3: k+1 j: j i: i dimensionM: dimensionM partProd: ((mat1[i][k] * mat2[k][j]) + partProd) mat1: mat1 mat2: mat2];
  }
  return partProd;
}

@end

int main(){

  int dimensionN = 10000;
  int dimensionM = 10000;

  MatrixMultiplier *multiplierInstance = [[MatrixMultiplier alloc] init];

  int **mat1;
  int **mat2;
  int **result;

  int i = 0, j = 0;// k = 0, l = 0;

  mat1 = (int **)malloc(dimensionN * sizeof(int *));
  for (i = 0; i < dimensionN; i++){
    mat1[i] =(int *)malloc(dimensionM * sizeof(int));
  }

  mat2 = (int **)malloc(dimensionM * sizeof(int *));
  for (i = 0; i < dimensionM; i++){
    mat2[i] = (int *)malloc(dimensionN * sizeof(int));
  }

  result = (int **)malloc(dimensionN * sizeof(int *));
  for (i = 0; i < dimensionN; i++){
    result[i] = (int *)malloc(dimensionN * sizeof(int));
  }

  for (i = 0; i < dimensionN; i++){
    for (j = 0; j < dimensionM; j++){

      mat1[i][j] = arc4random_uniform(10001);

      if(arc4random()%2 == 1){
        mat1[i][j] = mat1[i][j] * -1;
      }
    }
  }

  for (i = 0; i < dimensionM; i++){
    for (j = 0; j < dimensionN; j++){

      mat2[i][j] = arc4random_uniform(10001);

      if(arc4random()%2 == 1){
        mat2[i][j] = mat1[i][j] * -1;
      }
    }
  }

  CFTimeInterval start = CACurrentMediaTime();

  [multiplierInstance multiplier_f1: 0 dimensionN: dimensionN dimensionM: dimensionM mat1: mat1 mat2: mat2 results: result];

  CFTimeInterval e_time = (CACurrentMediaTime() - start);

  printf("%lf\n", e_time);

  for (i = 0; i < dimensionN; i++){
    free(mat1[i]);
  }
  free(mat1);

  for (i = 0; i < dimensionM; i++){
    free(mat2[i]);
  }
  free(mat2);

  for (i = 0; i < dimensionN; i++){
    free(result[i]);
  }
  free(result);
}
