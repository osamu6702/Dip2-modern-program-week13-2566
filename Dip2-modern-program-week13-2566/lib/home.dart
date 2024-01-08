import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          "Flutter Basic",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(
          child: Text(
            "สวัสดีปีใหม่2567",
            style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Hello");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}