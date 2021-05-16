import 'package:rxdart/subjects.dart';

class SharedValuesSubject {
  static final SharedValuesSubject _singleton = SharedValuesSubject._internal();
  factory SharedValuesSubject() {
    return _singleton;
  }

  SharedValuesSubject._internal();

  /// [isSelected] whether a plant is a selected or not
  // ignore: close_sinks
  BehaviorSubject<bool> isSelected = BehaviorSubject<bool>.seeded(false);
}
   
