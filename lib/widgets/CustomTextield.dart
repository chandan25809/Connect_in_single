import 'package:flutter/material.dart';
import 'package:Connect_in_single/main.dart';

class CustomTextField extends StatelessWidget {
  String hint;
  bool issecured;
  Color color;

  CustomTextField({this.hint, this.issecured, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: TextField(
          obscureText: issecured,
          cursorColor: AppStateContainer.of(context).theme.accentColor,
          style:
              TextStyle(color: AppStateContainer.of(context).theme.accentColor),
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
              fillColor: AppStateContainer.of(context)
                  .theme
                  .accentColor
                  .withOpacity(0.05),
              filled: true,
              hintText: hint,
              hintStyle: TextStyle(
                fontSize: 12,
                color: AppStateContainer.of(context).theme.accentColor,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppStateContainer.of(context).theme.accentColor,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              //   focusedBorder: OutlineInputBorder(
              // borderSide: BorderSide(color: AppStateContainer.of(context).accentColor),
              // borderRadius: BorderRadius.circular(25.7),
              //   ),
              // hoverColor: Colors.transparent,
              //focusColor: Colors.black,

              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppStateContainer.of(context).theme.accentColor),
                borderRadius: BorderRadius.circular(10),
              )),
        ));
  }
}
