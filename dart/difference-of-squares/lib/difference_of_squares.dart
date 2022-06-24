class DifferenceOfSquares {
  int squareOfSum(int n) {
    int r = 0;
    for(int i = 1; i <= n; i++) {
      r += i;
    }
    return r * r;    
  }

  int sumOfSquares(int n) {
    int r = 0;
    for(int i = 1; i <= n; i++) {
      r += i * i;
    }
    return r;    
  }

  int differenceOfSquares(int n) {
    return ((n*n - 1) * (3*n + 2) * n ~/ 12);
  }
}
