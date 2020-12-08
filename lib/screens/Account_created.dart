import 'package:Connect_in_single/main.dart';
import 'package:flutter/material.dart';
import 'package:Connect_in_single/screens/tabs.dart';

class Accountcreated extends StatefulWidget {
  @override
  _AccountcreatedState createState() => _AccountcreatedState();
}

class _AccountcreatedState extends State<Accountcreated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStateContainer.of(context).theme.primaryColor,
        appBar: AppBar(
          backgroundColor: AppStateContainer.of(context).theme.primaryColor,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0),
              child: SizedBox(
                height: 272,
                width: 269,
                child: Image.asset('assets/images/account_logo.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 35, 20, 20),
              child: Center(
                child: Text(
                  'Account Created!',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: AppStateContainer.of(context).theme.accentColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Your account has been successfully created.",
                style: TextStyle(
                  fontSize: 15,
                  color: AppStateContainer.of(context).theme.accentColor,
                ),
              ),
            ),
            Text(
              "Tap on continue to start using the app",
              style: TextStyle(
                fontSize: 15,
                color: AppStateContainer.of(context).theme.accentColor,
              ),
            ),
            SizedBox(
              height: 148,
            ),
            ButtonTheme(
              minWidth: 340.0,
              height: 10.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>Home(),
                      ));
                },
                padding: EdgeInsets.all(13),
                color: Color(0xFF1F89CA),
                child: Text('continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    )),
              ),
            ),
          ],
        ));
  }
}
