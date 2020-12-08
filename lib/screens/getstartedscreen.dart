import 'package:flutter/material.dart';
import 'package:Connect_in_single/screens/login%20or%20signup.dart';
import 'package:Connect_in_single/main.dart';

class getstart extends StatefulWidget {
  @override
  _getstartState createState() => _getstartState();
}

class _getstartState extends State<getstart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStateContainer.of(context).theme.primaryColor,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //We take the image from the assets
          SizedBox(
            height: 200,
            width: 400,
            child: Image.asset('assets/images/cis_logo.png'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Text(
              "World's first social media platform with private and public spaces",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppStateContainer.of(context).theme.accentColor,
              ),
            ),
          ),
          SizedBox(height: 300),
          ButtonTheme(
            minWidth: 250.0,
            height: 10.0,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => selectlogintype()),
                );
              },
              padding: EdgeInsets.all(15),
              color: Color(0xFF1D2C5F),
              child: Text('GET STARTED',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  )),
            ),
          )
        ],
      )),
    );
  }
}
