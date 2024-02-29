List<int> rotateRight(List<int> arr, int positions) {
  int effectiveRotations = positions % arr.length;
  List<int> rotatedArray = [];
  for (int i = 0; i < arr.length; i++) {
    int newIndex = (i + arr.length - effectiveRotations) % arr.length;
    rotatedArray.add(arr[newIndex]);
  }
  return rotatedArray;
}
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int positions = 2; 
  print("Original array:");
  print(numbers);
  List<int> rotatedArray = rotateRight(numbers, positions);
  print("\nArray after rotating right by $positions positions:");
  print(rotatedArray);
}