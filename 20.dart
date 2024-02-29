void moveNegativesToBeginning(List<int> arr) {
  int j = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] >= 0) {
      if (i > j) {
        arr[j] = arr[i];
        arr[i] = arr[j - 1];
        arr[j - 1] = arr[i];
      }
      j++;
    }
  }
}
void main() {
  List<int> arr = [1, -3, 4, -2, 4, -3];
  moveNegativesToBeginning(arr);
  print(arr); 
}