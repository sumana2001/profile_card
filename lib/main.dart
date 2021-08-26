import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wanda's Profile Card"),
        centerTitle:true,
        backgroundColor: Colors.red[800],
        elevation:0.0,
      )
    );
  }
}