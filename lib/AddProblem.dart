import 'package:flutter/material.dart';

class AddProblem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // build method which will be called each time we make changes in our materialApp inside it
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[200],
          title: Center(
            child: Text('The Healer '),
          ),
        ),
        body: Container(),
      ),
    );
  }
}
