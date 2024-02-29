void main() {
  List<int> arr = [4, 9, 1, 32, 13];
  arr.sort();
  int minDiff = arr[1] - arr[0];
  for (int i = 1; i < arr.length - 1; i++) {
    int diff = arr[i + 1] - arr[i];
    if (diff < minDiff) {
      minDiff = diff;
    }
  }
  print(minDiff);
}