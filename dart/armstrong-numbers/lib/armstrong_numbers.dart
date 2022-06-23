import "dart:math";

class ArmstrongNumbers {
  bool isArmstrongNumber(int n) {
    List<int> digits = []; 
    var value = n;
    while (value > 0) {
      int d = value % 10;
      digits.add(d);
      value ~/= 10;
    }

    int digitsQty = digits.length;
    var r = digits.fold<int>(0, (previousValue, element) => previousValue + pow(element, digitsQty).toInt());
    return r == n;
  }
}
