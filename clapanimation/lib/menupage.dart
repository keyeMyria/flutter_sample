import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'list_menu.dart';
import 'common/widgetmods.dart';

class MainPage extends StatelessWidget {
  final String title;
  MainPage(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue[200], Colors.blueGrey[600]]),
      ),
      child: Container(
        decoration: buildRadiusContainer(),
        margin: EdgeInsets.only(
            top: statusBarHeight + 4, bottom: 12.0, left: 10.0, right: 10.0),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              title,
              style: TextStyle(fontSize: 16.0, color: Colors.black87),
            ),
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Colors.white,
            brightness: Brightness.dark,
          ),
          body: MenuList(),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
