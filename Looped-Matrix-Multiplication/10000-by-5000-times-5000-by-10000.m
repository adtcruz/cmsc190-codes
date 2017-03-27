#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

int main(){

  int dimensionN = 10000;
  int dimensionM = (dimensionN / 2);

  int **mat1;
  int **mat2;
  int **result;

  int i = 0, j = 0, k = 0;//, l = 0;

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

  for (i = 0; i < dimensionN; i++){
    for (j = 0; j < dimensionN; j++){

      int partProd = 0;

      for (k = 0; k < dimensionM; k++){
        partProd = (mat1[i][k] * mat2[k][j]) + partProd;
      }

      result[i][j] = partProd;
    }
  }

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
