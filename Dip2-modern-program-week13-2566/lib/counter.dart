import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget{
  const CounterPage({Key? key}): super(key: key);

  State<CounterPage> createState()=>_CounterPage();
}

class _CounterPage extends State<CounterPage>{
  int _count = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          "Flutter Basic",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Text(
            "Counter:$_count",
            style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 40,
              fontWeight:  FontWeight.bold,
            ),
          )
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _count = _count + 1;
                debugPrint("count:$_count");
              });
            },
            child: Icon(Icons.add),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _count = _count - 1;
                debugPrint("count:$_count");
              });
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _count = 0;
                debugPrint("count:$_count");
              });
            },
            child: Icon(Icons.restart_alt),
          ),
        ],
      ),

    );
  }
}