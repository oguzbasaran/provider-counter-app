import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times:'),
            Consumer<CounterModel>(
              builder: (context, counter, child) =>
                  Text('${counter.counter}', style: TextStyle(fontSize: 32)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterModel>(context, listen: false).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
