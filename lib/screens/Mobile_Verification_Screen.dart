import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:Connect_in_single/screens/verify_otp_screen.dart';
import 'package:Connect_in_single/main.dart';
import 'package:Connect_in_single/Animations/FadeAnimation.dart';

class Mobile_Verification_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppStateContainer.of(context).theme.primaryColor,
        elevation: 0,
        centerTitle: true,
        textTheme: Theme.of(context).textTheme,
      ),
      backgroundColor: AppStateContainer.of(context).theme.primaryColor,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Text(
                      "Mobile Verification",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        color: AppStateContainer.of(context).theme.accentColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    child: Text(
                      "please enter your valid phone number.We will send you 4-digit code to verify account",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppStateContainer.of(context).theme.accentColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, right: 50, left: 30),
                    child: InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber);
                      },
                      onInputValidated: (bool value) {
                        print(value);
                      },
                      selectorConfig: SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                        backgroundColor: Colors.white,
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: TextStyle(
                          color:
                              AppStateContainer.of(context).theme.accentColor),
                      inputBorder: OutlineInputBorder(),
                    ),

                    /*IntlPhoneField(
                    
                    dropdownDecoration: BoxDecoration(
                      color: Colors.lightBlue[50],
                      shape: BoxShape.rectangle,
                      
                    ),
                    autoValidate: true,
                    
                    countryCodeTextColor: Color(0xFF1D2C5F),
                    decoration: InputDecoration( 
                        
                        labelText: 'Phone Number',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF1D2C5F)
                          )
                        ),
                        border: OutlineInputBorder(
                        borderSide: BorderSide(),
                        
                        ),
                    ),
                    initialCountryCode: 'IN', //default contry code
                    onChanged: (phone) {
                        //when phone number country code is changed
                        print(phone.completeNumber); //get complete number
                        print(phone.countryCode); // get country code only
                        print(phone.number); // only phone number
                    },
                ) */
                  ),
                  SizedBox(height: 380),
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
                              builder: (context) => VerifyPhone(),
                            ));
                      },
                      padding: EdgeInsets.all(20),
                      color: Color(0xFF1F89CA),
                      child: Text('Send Code',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
