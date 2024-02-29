class ArrayAverage {
  List<double> array;
  ArrayAverage(this.array);
  double getAverage() {
    var sum = 0.0;
    for (var element in array) {
      sum += element;
    }
    final average = sum / array.length;
    return average;
  }
}

void main() {
  final array = [1, 2, 3, 4, 5];
  final arrayAverage = ArrayAverage(array);
  final average = arrayAverage.getAverage();
  print("The average of the elements in the array is: $average");
}