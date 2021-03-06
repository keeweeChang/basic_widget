import 'package:flutter/material.dart';

class BasicLayoutPage extends StatelessWidget {
  BasicLayoutPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.airplanemode_active),
            SizedBox(height: 8.0),
            _item("Hello flutter"),
            SizedBox(height: 8.0),
            _item("Hello Rose"),
            SizedBox(height: 8.0),
            _item("Hello Samber"),
          ],
        ),
      ),
    );
  }

  Widget _item(String value) {
    return DecoratedBox(
      child: Padding(
        child: Text(value),
        padding: EdgeInsets.all(8),
      ),
      decoration: BoxDecoration(color: Colors.amberAccent),
    );
  }
}
