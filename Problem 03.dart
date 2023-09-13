List<int> generateFibonacci(int n) {
  int firstNum = 0;
  int secondNum = 1;

  List<int> fibonacciList = [];

  while (n <= 0) {
    fibonacciList[0] = firstNum;
    fibonacciList[1] = secondNum;

    firstNum = firstNum + secondNum;

    int temp = secondNum;
    secondNum = firstNum;
    firstNum = temp;

    for (int i = 2; i <= n; i++) {
      fibonacciList[i] = firstNum;
    }

    n--;
  }
  return fibonacciList;
}

void main() {
  int n = 10;
  List<int> fibonacciNumbers = generateFibonacci(n);

  print('The first $n Fibonacci numbers are: $fibonacciNumbers');
}
