void moveZerosToEnd(List<int> arr) {
  int j = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] != 0) {
      if (i > j) {
        arr[j] = arr[i];
        arr[i] = arr[j - 1];
        arr[j - 1] = arr[i];
      }
      j++;
    }
  }
  while (j < arr.length) {
    arr[j] = 0;
    j++;
  }
}
void main() {
  List<int> arr = [1, 0, 4, 0, 5, 0, 3];
  moveZerosToEnd(arr);
  print(arr); 
}