import 'package:flutter/material.dart';
import 'package:Connect_in_single/main.dart';
import 'package:Connect_in_single/screens/signup_screen.dart';
import 'package:Connect_in_single/Animations/FadeAnimation.dart';
import 'package:Connect_in_single/screens/Mobile_Verification_Screen.dart';

class selectlogintype extends StatefulWidget {
  selectlogintype({Key key}) : super(key: key);

  @override
  _selectlogintypeState createState() => _selectlogintypeState();
}

class _selectlogintypeState extends State<selectlogintype> {
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
              height: 250,
              width: 400,
              child: Image.asset('assets/images/cis_logo.png'),
            ),

            Center(
              child: Text(
                "World's first social media platform with private                 and public spaces",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: AppStateContainer.of(context).theme.accentColor
                    ..withOpacity(0.1),
                ),
              ),
            ),
            SizedBox(height: 280),

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
                        builder: (context) => Mobile_Verification_Screen(),
                      ));
                },
                padding: EdgeInsets.all(13),
                color: Color(0xFF1F89CA),
                child: Text('LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    )),
              ),
            ),
            SizedBox(height: 10),

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
                        builder: (context) => SignupScreen(),
                      ));
                },
                padding: EdgeInsets.all(13),
                color: Color(0xFF1D2C5F),
                child: Text('SIGN UP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    )),
              ),
            ),
            /*SizedBox(height: 40),
              Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 64),
              child: Text(
                        "By  continuing,I accept Terms & Privacy Policy",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black,
                        ),
                      ),
              
            )*/
          ],
        ),
      ),
    );
  }
}
