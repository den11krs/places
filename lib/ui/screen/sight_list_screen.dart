import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('resizeToAvoidBottomInset Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            SizedBox(
              width: 200.0,
              height: 100,
              child: Card(child: Text('SizedBox Widget')),
            ),
            Text(
              'Text Widget',
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
              ),
            ),
            SizedBox(
              width: 200.0,
              height: 100,
              child: Card(child: Text('SizedBox Widget')),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
