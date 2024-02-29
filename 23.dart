import 'dart:collection';
int smallestSumSubarray(List<int> arr) {
  if (arr.isEmpty) return 0;
  List<int> prefixSum = [0];
  prefixSum.addAll(arr.map((e) => prefixSum.last + e));
  int minSum = int.maxFinite;
  for (int i = 0; i < arr.length; i++) {
    for (int j = i + 1; j <= arr.length; j++) {
      minSum = min(minSum, prefixSum[j] - prefixSum[i]);
    }
  }
  return minSum;
}
void main() {
  List<int> arr = [3, -4, 2, -3, -1, 7, -5];
  print(smallestSumSubarray(arr));
}