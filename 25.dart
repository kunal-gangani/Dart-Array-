void main() {
  List<int> arr1 = [1, 5, 3, 19, 18, 25];
  List<int> arr2 = [30, 5, 20, 9];
  List<int> sortedArr1 = [...arr1..sort()];
  List<int> sortedArr2 = [...arr2..sort()];
  int minDiff = findMinDifference(sortedArr1, sortedArr2);
  print('Minimum difference: $minDiff');
}
int findMinDifference(List<int> arr1, List<int> arr2) {
  int minDiff = int.maxFinite;
  int i = 0, j = 0;
  while (i < arr1.length && j < arr2.length) {
    minDiff = min(minDiff, abs(arr1[i] - arr2[j]));
    if (arr1[i] < arr2[j]) {
      i++;
    } else {
      j++;
    }
  }
  return minDiff;
}
int abs(int value) => value < 0 ? -value : value;