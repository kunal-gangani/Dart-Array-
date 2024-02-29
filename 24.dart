int maxDifference(List<int> arr) {
  int maxDiff = -1;
  int minElement = arr[0];
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] - minElement > maxDiff) {
      maxDiff = arr[i] - minElement;
    }
    if (arr[i] < minElement) {
      minElement = arr[i];
    }
  }
  return maxDiff;
}