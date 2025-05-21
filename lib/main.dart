import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Test App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SimpleTestPage(),
    );
  }
}

class SimpleTestPage extends StatefulWidget {
  const SimpleTestPage({super.key});

  @override
  _SimpleTestPageState createState() => _SimpleTestPageState();
}

class _SimpleTestPageState extends State<SimpleTestPage> {
  String _message = 'Hello';

  void _toggleMessage() {
    setState(() {
      _message = _message == 'Hello' ? 'World' : 'Hello';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Test')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_message, style: const TextStyle(fontSize: 32)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleMessage,
              child: const Text('Toggle'),
            ),
          ],
        ),
      ),
    );
  }
}
