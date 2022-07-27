import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class AppStrings {
  static const appTitle = 'Places';
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyFirstStatefulWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
