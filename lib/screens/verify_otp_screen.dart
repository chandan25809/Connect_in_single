import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:Connect_in_single/main.dart';

class VerifyPhone extends StatefulWidget {
  // final String phoneNumber;

  // VerifyPhone({@required this.phoneNumber});

  @override
  _VerifyPhoneState createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  String code = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStateContainer.of(context).theme.primaryColor,
      appBar: AppBar(
        elevation: 0,
        textTheme: Theme.of(context).textTheme,
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Text(
                      "Mobile Verification",
                      // "Code is sent to " + widget.phoneNumber,
                      style: TextStyle(
                        fontSize: 35,
                        color: AppStateContainer.of(context).theme.accentColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Text(
                      "Verification code has been sent to",
                      // "Code is sent to " + widget.phoneNumber,
                      style: TextStyle(
                        fontSize: 15,
                        color: AppStateContainer.of(context)
                            .theme
                            .accentColor
                            .withOpacity(0.6),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 0),
                    child: Text(
                      "+911234567890",
                      // "Code is sent to " + widget.phoneNumber,
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF5AB2E9),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 30),
                      child: PinCodeTextField(
                        appContext: context,
                        pastedTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        length: 4,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscureText: false,
                        obscuringCharacter: '*',
                        backgroundColor:
                            AppStateContainer.of(context).theme.primaryColor,
                        pinTheme: PinTheme(
                          inactiveColor:
                              AppStateContainer.of(context).theme.accentColor,
                          activeColor: Color(0xFF0097D8),
                          selectedColor:
                              AppStateContainer.of(context).theme.accentColor,
                          shape: PinCodeFieldShape.underline,
                          fieldWidth: 40,
                        ),
                        cursorColor:
                            AppStateContainer.of(context).theme.accentColor,
                        textStyle: TextStyle(
                            fontSize: 20,
                            height: 1.6,
                            color: AppStateContainer.of(context)
                                .theme
                                .accentColor),
                        keyboardType: TextInputType.number,
                        onCompleted: (v) {
                          print("Completed");
                        },
                        // onTap: () {
                        //   print("Pressed");
                        // },
                        // onChanged: (value) {
                        //   print(value);
                        //   setState(() {
                        //     currentText = value;
                        //   });
                        // },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        },
                        onChanged: (String value) {},
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Text(
                      "Did not recieve the code?",
                      // "Code is sent to " + widget.phoneNumber,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppStateContainer.of(context)
                            .theme
                            .accentColor
                            .withOpacity(0.6),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("I was tapped!");
                    },
                    child: Text(
                      "Resend Code",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF5AB2E9),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 35, top: 0, left: 20, right: 10),
            child: MaterialButton(
              height: 48.0,
              minWidth: 340.0,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              color: const Color(0xff3696D2),
              textColor: Colors.white,
              child: new Text(
                "Proceed",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ),

          /*Container(
              height: MediaQuery.of(context).size.height * 0.105,

              child: Padding(
                padding: EdgeInsets.only(bottom: 35,top: 0,left: 10,right: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          print("Verify and Create Account");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF1F89CA),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Proceed",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),*/
        ],
      )),
    );
  }

  Widget buildCodeNumberBox(String codeNumber) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: 60,
        height: 60,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF6F5FA),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 25.0,
                  spreadRadius: 1,
                  offset: Offset(0.0, 0.75))
            ],
          ),
          child: Center(
            child: Text(
              codeNumber,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F1F1F),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
