import 'package:flutter/material.dart';

class CharacterCard extends StatefulWidget {
  @override
  _CharacterCardState createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {

  int samuraiLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Lion Man'),
        elevation: 0.0,
        centerTitle: true,
      ),
            floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.orange,
        onPressed: () {
          setState(() {
            samuraiLevel += 1;
          });
        },
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Lion_Man.png'),
                radius: 40,
              ),
            ),
            SizedBox(height: 10),
            Divider(
              height: 30.0,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey[600],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Lion Man',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT SAMURAI LEVEL',
              style: TextStyle(
                color: Colors.grey[600],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$samuraiLevel',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 5.0,),
                Text(
                  'shumaru@lion-man.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}