import 'package:flutter/material.dart';

class StatelessPage extends StatelessWidget {
  StatelessPage({Key key}) : super(key: key);
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$count',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => count++,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
