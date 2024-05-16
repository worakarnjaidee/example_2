import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if(_counter != 0){
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(onPressed:(){
              _incrementCounter();
            }, child: Icon(Icons.add, color: Colors.green,)),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              _decrementCounter();
            }, child: Icon(Icons.minimize, color: Colors.red,)),
          ],
        ),
      ),
    );
  }
}
