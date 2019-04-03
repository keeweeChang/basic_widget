import 'package:flutter/material.dart';
import '../blocs/count_provider.dart';

class BlocPage extends StatelessWidget {
  BlocPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = CountProvider.of(context);
    return _buildpage(bloc);
  }

  Widget _buildpage(CountBloc bloc) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
              stream: bloc.count,
              builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                return Text(
                  snapshot.hasData ? '${snapshot.data}' : '0',
                  style: Theme.of(context).textTheme.display1,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => bloc.countAdd(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
