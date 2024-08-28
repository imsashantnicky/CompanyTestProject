import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> colors = [
    Colors.orange,
    Colors.green,
    Colors.blue,
    Colors.black,
    Colors.pink,
  ];

  late Color currentColor;
  int colorIndex = 0;

  @override
  void initState() {
    super.initState();
    currentColor = colors[colorIndex];
  }

  void changeScreenColor() {
    setState(() {
      colorIndex = (colorIndex + 1) % colors.length;
      currentColor = colors[colorIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentColor,
      body: Center(
        child: ElevatedButton(
          onPressed: changeScreenColor,
          child: const Text('Change Color'),
        ),
      ),
    );
  }
}