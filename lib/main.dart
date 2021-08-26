import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Wanda's Profile Card"),
        centerTitle:true,
        backgroundColor: Colors.red[800],
        elevation:0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/wanda.jpeg'),
                radius: 70.0,
              ),
            ),
            Text(
              'Wanda Maximoff',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                fontSize: 35.0,
                fontFamily: 'Allison'
              ),
            ),
          ],
        ),
      ),
    );
  }
}