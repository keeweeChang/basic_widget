import 'package:flutter/material.dart';
import 'count_bloc.dart';
export 'count_bloc.dart';

class CountProvider extends InheritedWidget {
  final _bloc;
  
  CountProvider({Key key, Widget child})
  :_bloc = CountBloc(),
  super(key: key, child: child);

  // CountProvider({Key key, Widget child}) {
  //   _bloc = CountBloc();
  //   super(key: key, child: child);
  // }

  static CountBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(CountProvider) as CountProvider)._bloc;
  }

  @override
  bool updateShouldNotify(_) => true;
}