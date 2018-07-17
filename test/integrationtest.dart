import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:training_flutter_unit/service.dart';
import 'package:training_flutter_unit/view.dart';
import 'package:training_flutter_unit/controller.dart';

class MockService extends Mock implements DataService{}
var service = new MockService();

class MockView extends Mock implements ControllerView{}
var view = new MockView();

void main(){
  test("Should show only even numbers", (){

    when(service.getNumbersFromDatabase()).thenReturn(
      new List<int>.generate(4, (i){return i+1;})
    );

    Controller(service, view).start();
    var expectedList = new List<int>();
    expectedList.add(2);
    expectedList.add(4);
    verify(view.showNumbers(expectedList));

  });
}
