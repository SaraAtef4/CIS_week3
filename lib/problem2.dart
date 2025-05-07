import 'dart:ffi';
import 'dart:io';

void problem2() {
  print('enter a word');
  String word = stdin.readLineSync()!;
  int left = 0;
  int right = word.length - 1;

  while (left <right) {
    if (word[left] != word[right]) {
      print('The word is not a palindrome');
      return;
    }
    left++;
    right--;
  }

  print('The word is a palindrome');
}