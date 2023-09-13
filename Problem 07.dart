import 'dart:math';
import 'dart:io';

void main() {
  final Random random = Random();
  final int minNumber = 1;
  final int maxNumber = 100;
  final int targetNumber = random.nextInt(maxNumber - minNumber + 1) + minNumber;
  int attempts = 0;
  int userGuess;

  print('Welcome to the Number Guessing Game!');
  print('I have selected a random number between $minNumber and $maxNumber.');

  do {
    stdout.write('Enter your guess: ');
    userGuess = int.tryParse(stdin.readLineSync());

    if (userGuess == null) {
      print('Invalid input. Please enter a valid number.');
    } else {
      attempts++;

      if (userGuess < minNumber || userGuess > maxNumber) {
        print('Your guess is out of the valid range.');
      } else if (userGuess < targetNumber) {
        print('Too low. Try again.');
      } else if (userGuess > targetNumber) {
        print('Too high. Try again.');
      }
    }
  } while (userGuess != targetNumber);

  print('Congratulations! You guessed the correct number ($targetNumber) in $attempts attempts.');
}
