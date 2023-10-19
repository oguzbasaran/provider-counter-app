import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterModel>();

    return Scaffold(
      appBar: AppBar(title: const Text('Provider Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '${counter.counter}',
              style: const TextStyle(fontSize: 32),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterModel>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
