import 'enums/ft.dart';

String sayHello(String name) {
  return 'Hello, $name!';
}

int sum(int number1, int number2) {
  return number1 + number2;
}

int sumMany(Iterable<int> params) {
  return params.reduce((value, element) => value + element);
}

void sumAndPrint(num param1, num param2, {bool shouldPrint = false}) {
  num sum = param1 + param2;

  if (shouldPrint) {
    print('The sum is: $sum');
  }
}

dynamic sumAndFormat(num num1, num num2, {Ft? ft}) {
  num sum = num1 + num2;

  if (ft == Ft.int) {
    return sum.toInt();
  } else if (ft == Ft.double) {
    return sum.toDouble();
  } else {
    return sum;
  }
}

String strReverse(String text) => text.split('').reversed.join('');

void fibonacci(int n) {
  int a = 0;
  int b = 1;

  print(a);
  print(b);

  for (int i = 2; i < n; i++) {
    int c = a + b;
    print(c);
    a = b;
    b = c;
  }
}