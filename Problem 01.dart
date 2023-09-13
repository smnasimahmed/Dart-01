double findLargestNumber(List<double> numbers) {
  double largest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}

void main() {
  List<double> numbers = [5, 12, 9, 42, 25];
  double largestNumber = findLargestNumber(numbers);
  print('The largest number in the list is: $largestNumber');
}
