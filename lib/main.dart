import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Places',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyFirstStatefulWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  int _counter = 0;

  MyFirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _counter = _counter + 1;
    debugPrint("'Build' function has been called $_counter times.");

    return Container(
      child: const Center(
        child: Text('Hello'),
      ),
    );
  }
}

class MyFirstStatefulWidget extends StatefulWidget {
  const MyFirstStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyFirstStatefulWidget> createState() => _MyFirstStatefulWidgetState();
}

class _MyFirstStatefulWidgetState extends State<MyFirstStatefulWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    _counter = _counter + 1;
    debugPrint("'Build' function has been called $_counter times.");

    return Container(
      child: const Center(
        child: Text('Hello'),
      ),
    );
  }
}
