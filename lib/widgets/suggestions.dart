
import 'package:flutter/material.dart';
import 'package:Connect_in_single/main.dart';

class Custombutton extends StatelessWidget {
  String name;
  Custombutton({this.name});
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 40,
      height: 32,
      child: RaisedButton(
        elevation: 0,
        color: AppStateContainer.of(context).theme.primaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(
              color: AppStateContainer.of(context).theme.accentColor.withOpacity(0.1),
            )),
        onPressed: () {},
        child: Text(
          name,
          style: TextStyle(
            color: AppStateContainer.of(context).theme.accentColor,
            fontSize: 14
          ),
        ),
      ),
    );
  }
}