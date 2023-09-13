List<double> findUniqueElements(List<double> numbers) {
  Set<double> uniqueElements = Set<double>();
  
  for (double number in numbers) {
    uniqueElements.add(number);
  }

  // Convert the Set back to a List if needed
  List<double> uniqueList = uniqueElements.toList();

  return uniqueList;
}

void main() {
  List<double> numbers = [1, 2, 2, 3, 4, 4, 5];
  List<double> uniqueNumbers = findUniqueElements(numbers);

  print('Original List: $numbers');
  print('List with Unique Elements: $uniqueNumbers');
}
