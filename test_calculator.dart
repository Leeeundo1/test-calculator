import 'dart:io';

void main() {
  stdout.write('첫 번째 숫자를 입력해주세요: ');
  String? input1 = stdin.readLineSync();
  int num1 = int.parse(input1!);

  stdout.write('두 번째 숫자를 입력해주세요: ');
  String? input2 = stdin.readLineSync();
  int num2 = int.parse(input2!);

  stdout.write('연산자 입력 (+, -, *, /): ');
  String? operator = stdin.readLineSync();

  double result;

  switch (operator) {
    case '+':
      result = num1 + num2.toDouble();
      break;
    case '-':
      result = num1 - num2.toDouble();
      break;
    case '*':
      result = num1 * num2.toDouble();
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print('0으로 나눌 수 없습니다.');
        return;
      }
      break;
    default:
      print('지원하지 않는 연산자입니다.');
      return;
  }

  print('결과: $result');
}
