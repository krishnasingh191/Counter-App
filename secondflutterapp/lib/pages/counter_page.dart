import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CounterPage(),
  ));
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Pressed this Button many Time"),
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 40,
              color: Colors.red),
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.red, // 👈 changes text color to red
              ),
              child: const Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
