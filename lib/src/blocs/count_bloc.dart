
import 'package:rxdart/rxdart.dart';

class CountBloc {
  final _count = BehaviorSubject<int>();
  CountBloc() {
    _count.sink.add(0);
  }
  
  Stream<int> get count => _count.stream;

  void countAdd() {
    final newCount = _count.value + 1;
    _count.sink.add(newCount);
  }

  close() {
    _count.close();
  }
}