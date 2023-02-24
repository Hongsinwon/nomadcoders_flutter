import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Scaffold(
          appBar: AppBar(
            elevation: 1,
            centerTitle: true,
            title: Text('Hello flutter'),
          ),
          body: Center(
            child: Text('Hello world'),
          ),
        ),
      ),
    );
  }
}
