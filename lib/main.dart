import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter is Great'),
        centerTitle: true,
        backgroundColor: Colors.pink[600],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Button'),
          RaisedButton(
            child: Text('Click Me'),
            color: Colors.pink[600],
            onPressed: () {
              print('He110w');
            },
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.amber[400],
            child: Text(
              "I'm a container",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Fire'),
        onPressed: () {},
        backgroundColor: Colors.pink[600],
      ),
    );
  }
}
