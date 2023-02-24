import 'package:flutter/material.dart';

// * Stateless Widget은 Build매서드를 통해서 단지 UI를 출력할때 만 사용
// * Stateful Widget은 상태에 따라 변하게 될 데이터
class StateData extends StatefulWidget {
  const StateData({super.key});

  @override
  State<StateData> createState() => _AppState();
}

class _AppState extends State<StateData> {
  int counter = 0;
  List<int> numbers = [];

  void onClicked() {
    setState(() {
      //print(numbers);
      numbers.add(numbers.length);
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Ciunt',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              for (var i in numbers) Text('$i'),
              IconButton(
                  iconSize: 40,
                  onPressed: onClicked,
                  icon: const Icon(Icons.add_box_rounded))
            ],
          ),
        ),
      ),
    );
  }
}
