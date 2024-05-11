import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      // print("++++++");
    });
  }
  void _decrementCounter(){
    setState((){
      _counter--;
      // print("--------");
    });
  }

  @override
  Widget build(BuildContext context) {
    // int testInt=40;
    // String name="Mohammad Bilal";
    // double pi=3.12;
    // bool isMale=true;
    // num temp=3.7;
    // var mixVar=14;
    // const religion='islam';
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                  'You have pushed the button this many times:'
              ),
              // Text('Testing Text $testInt $name is male $isMale pi $pi number $temp mixvar $mixVar const $religion'),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FloatingActionButton( // first FAB to perform decrement
                onPressed: _decrementCounter,
                child: Icon(Icons.delete),
                tooltip: 'Increment'
            ),
            FloatingActionButton( // second FAB to perform increment
                onPressed: _incrementCounter,
                child: Icon(Icons.add),
                tooltip:'Decrement'
            ),
          ],
        ),
        drawer: Drawer(),
    );
  }
}
