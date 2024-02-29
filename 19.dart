int firstMissingPositive(List<int> arr) {
  Map<int, bool> h = {};
  for (int i = 1; i <= arr.length + 1; i++) {
    h[i] = false;
  }
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > 0 && arr[i] <= arr.length + 1) {
      h[arr[i]] = true;
    }
  }
  for (int i = 1; i <= arr.length + 1; i++) {
    if (!h[i]) {
      return i;
    }
  }
}