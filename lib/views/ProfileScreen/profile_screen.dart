import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String profileTitle;
  final Color profileColor;
  ProfileScreen({this.profileTitle, this.profileColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(profileTitle),
        backgroundColor: profileColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Text("Profile of MyUser"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.navigate_before),
            ),
          ],
        ),
      ),
    );
  }
}
