import 'package:Connect_in_single/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Add_profilescreen1 extends StatefulWidget {
  Add_profilescreen1({Key key}) : super(key: key);

  @override
  _Add_profilescreen1State createState() => _Add_profilescreen1State();
}

class _Add_profilescreen1State extends State<Add_profilescreen1> {
  String _date = "Not set";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStateContainer.of(context).theme.primaryColor,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: AppStateContainer.of(context).theme.primaryColor),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                "Complete profile",
                style: TextStyle(
                  fontSize: 35,
                  color: AppStateContainer.of(context).theme.accentColor,
                ),
              ),
            ),
            SizedBox(height: 35),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 4.0,
              onPressed: () {
                DatePicker.showDatePicker(context,
                    theme: DatePickerTheme(
                      containerHeight: 210.0,
                    ),
                    showTitleActions: true,
                    minTime: DateTime(1950, 1, 1),
                    maxTime: DateTime(2016, 12, 31), onConfirm: (date) {
                  print('confirm $date');
                  _date = '${date.year} - ${date.month} - ${date.day}';
                  setState(() {});
                }, currentTime: DateTime.now(), locale: LocaleType.en);
              },
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.date_range,
                                size: 18.0,
                                color: AppStateContainer.of(context)
                                    .theme
                                    .accentColor,
                              ),
                              Text(
                                " $_date",
                                style: TextStyle(
                                    color: AppStateContainer.of(context)
                                        .theme
                                        .disabledColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Text(
                      "  Change",
                      style: TextStyle(
                          color:
                              AppStateContainer.of(context).theme.accentColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              color: AppStateContainer.of(context).theme.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
