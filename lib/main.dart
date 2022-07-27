import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

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
      home: const SightListScreen(),
    );
  }
}
