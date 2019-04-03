import 'package:flutter/material.dart';
import 'screens/stateful_page.dart';
import 'blocs/count_provider.dart';
import 'screens/bloc_page.dart';
import 'screens/stateless_page.dart';
import 'screens/basic_layout_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final title = 'Flutter Demo Home Page';
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: Text(title),
        home: BasicLayoutPage(title: title)
        // home: StatelessPage(title: title),
        // home: StatefulPage(title: title),
        // home: CountProvider(
        //   child: BlocPage(
        //     title: title,
        //   ),
        // ),
        );
  }
}
