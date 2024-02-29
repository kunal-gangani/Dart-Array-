import 'dart:io';
class ArraySum{
  int findSum(List<int> array) {
    int sum = 0;
    for (int i = 0; i < array.length; i++) {
      sum += array[i];
    }
    return sum;
  }
}
void main() {
  print("Enter number of Elements you want in your array : ");
  int range = int.parse(stdin.readLineSync()!);
  List<int> array = [];
  for (int i = 0; i < range; i++) {
    print('Element $i:');
    int element = int.parse(stdin.readLineSync()!);
    array.add(element);
  }
  ArraySum as = ArraySum();
  int sum = as.findSum(array);
  print("The sum of all elements is : $sum");
}