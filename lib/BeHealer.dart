import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Notifications.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

import 'package:flutter/scheduler.dart' show timeDilation;

void main() => runApp(BeHealer());

/// This Widget is the main application widget.
class BeHealer extends StatelessWidget {
  static const String _title = 'سجَلني كمعالج ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text(_title)),
          backgroundColor: Colors.lightBlueAccent[200],
        ),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      children: <Widget>[
        CheckboxListTile(
          title: const Text(
            'صيانة الأجهزة',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo-Regular',
            ),
          ),
          value: timeDilation != 1.0,
          onChanged: (bool value) {
            setState(() {
              timeDilation = value ? 10.0 : 1.0;
            });
          },
          secondary: const Icon(Icons.devices_other),
        ),
        CheckboxListTile(
          title: const Text(
            'test',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo-Regular',
            ),
          ),
          value: timeDilation != 1.0,
          onChanged: (bool value) {
            setState(() {
              timeDilation = value ? 10.0 : 1.0;
            });
          },
          secondary: const Icon(Icons.devices_other),
        ),
      ],
    );
  }
}
