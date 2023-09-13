bool isPalindrome(String input) {
  
  String reversed = input.split('').reversed.join('');
  return input == reversed;
}

void main() {
  String testString1 = "racecar";
  String testString2 = "hello";
  
  print(isPalindrome(testString1));
  print(isPalindrome(testString2));
}