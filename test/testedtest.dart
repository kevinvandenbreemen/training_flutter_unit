import 'package:test/test.dart';
import 'package:training_flutter_unit/tested.dart';

void main(){

  test('Validate that the method returns 42 - the best answer, when doIt is false', (){
    expect(42, doSomethingCool(false, 34));
  });

  //  Check out the maters library
  //  https://pub.dartlang.org/documentation/matcher/latest/matcher/matcher-library.html
  test('Validate that if the number is even the answer will be a negative number', (){
    expect(doSomethingCool(true, 34), isNegative);
  });

  test('Validate that if the number is odd the answer will a positive integer and be 298', (){
    expect(doSomethingCool(true, 21), allOf(
      isPositive,
      equals(298)
    ));
  });

}