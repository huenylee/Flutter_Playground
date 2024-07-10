import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  final void Function(String name)? onTab;

  final String name;

  const Greeting({
    super.key,
    required this.name,
    this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: const Key('text'),
      onTap: () {
        // UI 변경 금지
        onTab?.call(name);
      },
      child: Text('Hello $name'),
    );
  }
}
