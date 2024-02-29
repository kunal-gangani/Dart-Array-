void reverseArray(List<int> arr) {
  int start = 0;
  int end = arr.length - 1;
  while (start < end) {
    int temp = arr[start];
    arr[start] = arr[end];
    arr[end] = temp;
    start++;
    end--;
  }
}
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Original array:");
  print(numbers);
  reverseArray(numbers);
  print("\nReversed array:");
  print(numbers);
}