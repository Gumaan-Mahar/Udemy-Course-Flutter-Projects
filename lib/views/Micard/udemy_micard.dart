import 'package:flutter/material.dart';

class Micard extends StatelessWidget {
  final String title;
  Micard({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/images/myprofile.jpg'),
            ),
            Text(
              "Gumaan Mahar",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Software Developer".toUpperCase(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                wordSpacing: 10.0,
                letterSpacing: 3.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(
                indent: 30.0,
                endIndent: 30.0,
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              color: Colors.grey.shade300,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 30.0,
                  color: Colors.black,
                ),
                trailing: Text(
                  '123-456-789',
                  style: TextStyle(fontSize: 30.0, letterSpacing: 5.0),
                ),
              ),
            ),
            Card(
              color: Colors.grey.shade300,
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.email_rounded,
                  size: 30,
                  color: Colors.black,
                ),
                trailing: Text(
                  'gumansingh.xoz@gmail.com',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
