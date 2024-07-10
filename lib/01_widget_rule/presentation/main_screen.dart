import 'package:flutter/material.dart';

import 'component/greeting.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // 상태(데이터)
  String text = '월드';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('제목'),
      ),
      body: Column(
        children: [
          Greeting(
            name: text,
            onTab: (name) {
              setState(() {
                text = name;
              });
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 변경
          setState(() {
            text = '바꼈음';
          });
        },
        child: const Text('변경'),
      ),
    );
  }
}
