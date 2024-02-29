int largestSumSubarray(List<int> arr) {
  if (arr.isEmpty) return 0;
  int maxSum = arr[0];
  int tempSum = arr[0];
  for (int i = 1; i < arr.length; i++) {
    tempSum = max(arr[i], tempSum + arr[i]);
    maxSum = max(maxSum, tempSum);
  }
  return maxSum;
}
void main() {
  List<int> arr = [1, 2, 3, 4, -10, 10, 20];
  print(largestSumSubarray(arr)); // Output: 31
}
int max(int a, int b) => a > b ? a : b;