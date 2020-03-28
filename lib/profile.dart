import 'package:alumini_app/sign_in.dart';
import 'package:flutter/material.dart';

import 'info.dart';

const url = 'https://fahimmuntashir.github.io/';
const job = 'Software Engineer';
const dob = '15-3-1999';
const batch = 2015;

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Profile_page(),
    );
  }
}

class Profile_page extends StatelessWidget {
  void _showDialog(BuildContext context, {String title, String msg}) {
    final Dialog = AlertDialog(
      title: Text(title),
      content: Text(msg),
      actions: <Widget>[
        RaisedButton(
          color: Colors.teal,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Close',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
    showDialog(context: context, builder: (x) => Dialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/logo.png'),
            ),
            Text(
              'USER 1',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.white,
              ),
            ),
            InfoCard(
              icon: Icons.calendar_today,
              text: 'DOB: $dob',
            ),
            InfoCard(
              icon: Icons.school,
              text: 'Job: $job',
            ),
            InfoCard(
              icon: Icons.people,
              text: 'Passed Out: $batch',
            ),
            FlatButton(
              color: Colors.white,
              onPressed: () => signOutGoogle(),
              child: Text(
                'Sign out',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
