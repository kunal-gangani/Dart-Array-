void bubbleSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        // swap arr[j] and arr[j+1]
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}
void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  print("Original array:");
  print(numbers);
  bubbleSort(numbers);
  
  print("\nSorted array:");
  print(numbers);
}