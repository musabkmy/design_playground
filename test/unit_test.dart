// This is an example unit test.
//
// A unit test tests a single function, method, or class. To learn more about
// writing unit tests, visit
// https://flutter.dev/to/unit-testing

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Plus Operator', () {
    test('should add two numbers together', () {
      expect(1 + 1, 2);
    });

    test('anagram', () {});
  });

// ignore: unused_element
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
      return false;
    }

    Map<String, int> anagram = {};
    String char;
    for (int i = 0; i < s.length; i++) {
      char = s.substring(i, i + 1);
      if (anagram.containsKey(char)) {
        anagram[char] = anagram[char]! + 1;
      } else {
        anagram[char] = 1;
      }
    }

    for (int i = 0; i < t.length; i++) {
      char = t.substring(i, i + 1);

      if (anagram.containsKey(char)) {
        anagram[char] = anagram[char]! + 1;
        if (anagram[char]! <= 0) {
          return false;
        }
      } else {
        return false;
      }
    }
    return true;
  }

  test('description', () {
    // print(to1GoatLatin('I speak Goat Latin'));
  });
}

void moveZeroes(List<int> nums) {
  int numsLength = nums.length;
  if (numsLength <= 1) {
    print(nums);
  }
  for (int i = 0; i < numsLength; i++) {
    if (nums[i] == 0) {
      print('i: $i');
      nums.removeAt(i);
      nums.add(0);
      numsLength--;
      i--;
    }
  }

  print(nums);
}

// void moveZeroes(List<int> nums) {
//   if (nums.length <= 1) {
//     print(nums);
//   }
//   List<int> bList = [];
//   for (int i = 0; i < nums.length; i++) {
//     if (nums[i] != 0) {
//       bList.add(nums[i]);
//     }
//   }
//   if (nums.length == bList.length) {
//     print(nums);
//   } else {
//     int dif = nums.length - bList.length;
//     nums = bList;
//     for (int i = 0; i < dif; i++) {
//       nums.add(0);
//     }
//     print(nums);
//   }
// }

String toGoatLatin(String sentence) {
  String output = '';
  String trailing = '';
  String vowelWord(String element) {
    return '${element}ma';
  }

  String notVowelWord(String element) {
    return '${element.substring(1)}${element.substring(0, 1)}ma';
  }

  // if (!sentence.contains(' ')) {
  //   trailing = '${trailing}a';
  //   if (sentence.startsWith(RegExp(r'[aeiouAEIOU]'))) {
  //     output = '$output${vowelWord(sentence)}$trailing';
  //   } else {
  //     output = '$output${notVowelWord(sentence)}$trailing';
  //   }
  //   return output;
  // }
  for (var element in sentence.split(' ')) {
    trailing = '${trailing}a';
    if (element.startsWith(RegExp(r'[aeiouAEIOU]'))) {
      output += '${vowelWord(element)}$trailing ';
    } else {
      output += '${notVowelWord(element)}$trailing ';
    }
  }
  return output.trim();
}

String to1GoatLatin(String sentence) {
  String word = '';
  String output = '';
  String trailing = '';
  String vowelWord(String element) {
    return '${element}ma';
  }

  String notVowelWord(String element) {
    return '${element.substring(1)}${element.substring(0, 1)}ma';
  }

  do {
    trailing = '${trailing}a';
    word = sentence.split(' ').first;
    if (word.startsWith(RegExp(r'[aeiouAEIOU]'))) {
      output += '${vowelWord(word)}$trailing ';
    } else {
      output += '${notVowelWord(word)}$trailing ';
    }
    sentence.replaceFirst(word, '').trim();
    print(sentence);
  } while (sentence.contains(' '));
  return output.trim();
}
