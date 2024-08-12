import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double widthscreen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          title: widthscreen > 600
              ? const Text('mobile screen')
              : const Text('screen')),
    );
  }
}
