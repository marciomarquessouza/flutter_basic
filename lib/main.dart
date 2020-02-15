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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Homem '),
              Text('Aranha'),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.amber[300],
            child: Text('one'),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.indigo[300],
            child: Text('Two'),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.pinkAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Three'),
              ],
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
