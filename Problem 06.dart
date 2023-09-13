int calculateFactorial(int n) {
  if (n < 0) {
    throw ArgumentError('Input must be a non-negative integer.');
  }
  if (n == 0) {
    return 1; // The factorial of 0 is defined as 1.
  }

  int factorial = 1;

  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }

  return factorial;
}

void main() {
  int number = 5;
    int result = calculateFactorial(number);
    print('The factorial of $number is $result');
  
}
