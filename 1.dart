import 'dart:io';
class LargestEle {
  int findLarge() {
    print("Enter number of Elements you want in your array : ");
    int range = int.parse(stdin.readLineSync()!);
    List<int> array = [];
    for (int i = 0; i < range; i++) {
      print('Element $i:');
      int element = int.parse(stdin.readLineSync()!);
      array.add(element);
    }
    int large = array[0]; 
    for (int i = 0; i < range; i++) {
      if (array[i] > large) {
        large = array[i];
      }
    }
    return large;
  }
}

void main() {
  LargestEle le = LargestEle();
  int largest = le.findLarge();
  print("The Largest  element is : $largest");
}