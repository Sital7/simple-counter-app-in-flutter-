import 'package:flutter/material.dart';

void main() => runApp(CounterApp());

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter Application',
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  CounterScreenState createState() => CounterScreenState();
}

class CounterScreenState extends State<CounterScreen> {
  int _count = 0;

  void increment() {
    setState(() {
      _count++;
    });
  }

  void decrement() {
    if (_count < 1) {
      return;
    }
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
          'Count Value:',
          style: TextStyle(fontSize: 23),
        ),
        Text(
          '$_count',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: increment,
              child: Text('Increment'),
            ),
            SizedBox(width: 18),
            ElevatedButton(
              onPressed: decrement,
              child: Text('Decrement'),
            ),
          ],
          //   FloatingActionButton(
          //     child: Icon(Icons.add), // Correct Icon for addition
          //     onPressed: increment,
          //   ),
          //   Text("Count"
          //     // 'Count: $_count',
          //     // style: TextStyle(fontSize: 24),
          //   ),
          //   FloatingActionButton(
          //     child: Icon(Icons.remove), // Correct Icon for subtraction
          //     onPressed: decrement,
          //   ),
          // ],
        ),
      ],
    )
      )
    );
  }
}
