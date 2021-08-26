import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

_launchURL() async {
  const url = 'https://www.marvel.com/characters/scarlet-witch-wanda-maximoff';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Wanda's Profile Card"),
        centerTitle: true,
        backgroundColor: Colors.red[800],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 0.0),
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
                  fontSize: 40.0,
                  fontFamily: 'Allison'),
            ),
            Text(
              'SUPERHERO',
              style: TextStyle(
                color: Colors.white54,
                letterSpacing: 4.0,
                fontSize: 18.0,
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.white54,
              indent: 50.0,
              endIndent: 50.0,
            ),
            ElevatedButton.icon(
              onPressed: () async {
                const url =
                    'https://www.marvel.com/characters/scarlet-witch-wanda-maximoff';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              icon: Icon(Icons.laptop_mac_outlined),
              label: Text('Marvel Website'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red[800],
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton.icon(
              onPressed: () async {
                const url =
                    'mailto:wanda.marvel@gmail.com';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              icon: Icon(Icons.mail_outline),
              label: Text('Email Address'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red[800],
                  padding: EdgeInsets.symmetric(horizontal: 55, vertical: 20),
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
