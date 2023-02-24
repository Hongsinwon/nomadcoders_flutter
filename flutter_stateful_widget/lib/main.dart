import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// * Stateless Widget은 Build매서드를 통해서 단지 UI를 출력할때 만 사용
// * Stateful Widget은 상태에 따라 변하게 될 데이터
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  void onClicked() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargTitle() : const Text('nothing'),
              IconButton(
                  onPressed: toggleTitle, icon: const Icon(Icons.access_alarm)),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargTitle extends StatefulWidget {
  const MyLargTitle({
    super.key,
  });

  @override
  State<MyLargTitle> createState() => _MyLargTitleState();
}

class _MyLargTitleState extends State<MyLargTitle> {
  int count = 0;

// * 1. initState() build를 하기 전에 항상 먼저 실행된다. 대표적으로 API를 불러올 때 사용된다.
  @override
  void initState() {
    super.initState();
    print('initState');
  }

// * 화면에서 사라질 때 실행한다.
  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
