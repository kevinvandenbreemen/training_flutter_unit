import 'service.dart';
import 'view.dart';

class Controller{

  DataService _service;
  ControllerView _view;

  Controller(this._service, this._view);

  void start() {
    var list = _service.getNumbersFromDatabase();
    list.removeWhere((i)=>i%2 != 0);
    _view.showNumbers(list);
  }



}