import 'package:flutter/material.dart';
import 'screens/stateful_page.dart';
import 'blocs/count_provider.dart';
import 'screens/bloc_page.dart';
import 'screens/stateless_page.dart';
import 'screens/basic_layout_page.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Flutter Demo Home Page';
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          bottom: _buildTabBar(),
        ),
        body: _buildTabBarView(),
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      tabs: <Widget>[
        _buildBarItem("Basic"),
        _buildBarItem("Stateless"),
        _buildBarItem("Stateful"),
        _buildBarItem("Bloc"),
      ],
      controller: controller,
    );
  }

  Widget _buildBarItem(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        title,
        style: TextStyle(fontSize: 15),
      ),
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(
      children: <Widget>[
        BasicLayoutPage(),
        StatelessPage(),
        StatefulPage(),
        CountProvider(child: BlocPage()),
      ],
      controller: controller,
    );
  }
}
