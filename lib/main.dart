import 'package:flutter/material.dart';

void main() {
  runApp(const Counter());
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Counter app!',
            style: TextStyle(),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '$counter',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter = counter + 1;
                  });
                },
                child: const Text("Increase")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter = counter - 1;
                  });
                },
                child: Text("decrese"))
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     setState(() {
        //       counter = counter + 1;
        //     });
        //   },
        //   child: Icon(Icons.add),
        // ),
      ),
    );
    ;
  }
}
