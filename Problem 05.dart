void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
}

void main() {
  int number = 42;
  checkEvenOrOdd(number);
}