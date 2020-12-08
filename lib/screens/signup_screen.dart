import 'package:Connect_in_single/screens/Add_profilescreen.dart';
import 'package:flutter/material.dart';
import 'package:Connect_in_single/widgets/CustomTextield.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:Connect_in_single/screens/settings_screen.dart';

import '../main.dart';

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
              fillColor: color,
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

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStateContainer.of(context).theme.primaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
          ),
        ],
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            color: AppStateContainer.of(context).theme.primaryColor),
        child: Center(
          child: Column(
            children: <Widget>[
              /* Row(
                children: <Widget>[
                  SizedBox(
                    height: 0,
                    width: 25,
                  ),
                  Padding(
                      padding: EdgeInsets.only(top:10,left:50),
                      child: Text(
                        "Register/Signup",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: AppStateContainer.of(context).theme.accentColor
                        ),
                      ),
                    ),
                
                ],
              ),
              SizedBox(height:5),
            Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.person_outline,size: 30,color: AppStateContainer.of(context).theme.accentColor), onPressed: null),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 20, left: 10),
                        child: TextField(
                          decoration: new InputDecoration(
                            hintText: 'Firstname',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppStateContainer.of(context).theme.accentColor)
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              //  when the TextFormField in focused 
                            ) ,
                            hintStyle: TextStyle(color: AppStateContainer.of(context).theme.accentColor),
                            suffixIcon: Icon(Icons.check_circle,color: AppStateContainer.of(context).theme.accentColor,),),
                        )))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.person_outline,size: 30,color:AppStateContainer.of(context).theme.accentColor), onPressed: null),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 20, left: 10),
                        child: TextField(
                          decoration:new InputDecoration(
                            hintText: 'Lastname',
                            hintStyle: TextStyle(color: AppStateContainer.of(context).theme.accentColor),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppStateContainer.of(context).theme.accentColor)
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              //  when the TextFormField in focused 
                            ) ,
                            suffixIcon: Icon(Icons.check_circle,color: AppStateContainer.of(context).theme.accentColor),),
                            
                        )))
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.mail_outline,size: 25,color: AppStateContainer.of(context).theme.accentColor,), onPressed: null),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 20, left: 10),
                        child: TextField(
                          decoration: new InputDecoration(hintText: 'Email (optional)',
                          hintStyle: TextStyle(color: AppStateContainer.of(context).theme.accentColor),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppStateContainer.of(context).theme.accentColor)
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              //  when the TextFormField in focused 
                            ) ,
                          suffixIcon: Icon(Icons.check_circle,color:AppStateContainer.of(context).theme.accentColor),),
                          
                        )))
              ],
            ),
          ),*/
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 35,
                    color: AppStateContainer.of(context).theme.accentColor,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "please provide following",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppStateContainer.of(context)
                        .theme
                        .accentColor
                        .withOpacity(0.6),
                  ),
                ),
              ),
              Text(
                "details for your new account",
                style: TextStyle(
                  fontSize: 15,
                  color: AppStateContainer.of(context)
                      .theme
                      .accentColor
                      .withOpacity(0.6),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              CustomTextField(
                hint: '   First Name',
                issecured: false,
                color: AppStateContainer.of(context)
                    .theme
                    .primaryColor
                    .withOpacity(0.6),
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: '    Last Name',
                issecured: false,
                color: AppStateContainer.of(context)
                    .theme
                    .primaryColor
                    .withOpacity(0.6),
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: '    Email Address (Optional)',
                issecured: false,
                color: AppStateContainer.of(context)
                    .theme
                    .primaryColor
                    .withOpacity(0.6),
              ),
              /*Container( 
              decoration: BoxDecoration(color:Colors.white),
              padding: EdgeInsets.only(top:2,right: 30,left: 20),
              child:InternationalPhoneNumberInput(  
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber);
              },
              onInputValidated: (bool value) {
                print(value);
              },
              selectorConfig: SelectorConfig(
                selectorType: PhoneInputSelectorType.DIALOG,
                backgroundColor: Colors.white,
              
              ),
              ignoreBlank: false,
              
              autoValidateMode: AutovalidateMode.disabled,
              selectorTextStyle: TextStyle(color: Colors.black,),
              searchBoxDecoration: InputDecoration(
              hintText: 'Search country name',

              hintStyle: TextStyle(
                
                  fontSize: 15,
                  ),
                border: const OutlineInputBorder()),
              
            ),),*/
              // CustomTextField(
              //   hint: '    enter your Password',
              //   issecured: true,
              // ),
              SizedBox(
                height: 15,
              ),
              Container(
                  margin: EdgeInsets.only(right: 28, left: 10),
                  child: IntlPhoneField(
                    // dropdownDecoration: BoxDecoration(
                    //   color: Colors.lightBlue[50],
                    //   shape: BoxShape.rectangle,
                    // ),
                    autoValidate: true,
                    dropDownArrowColor:
                        AppStateContainer.of(context).theme.accentColor,
                    countryCodeTextColor:
                        AppStateContainer.of(context).theme.accentColor,
                    decoration: new InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(
                          color:
                              AppStateContainer.of(context).theme.accentColor),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                AppStateContainer.of(context).theme.accentColor,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color:
                              AppStateContainer.of(context).theme.accentColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    initialCountryCode: 'IN', //default contry code
                    onChanged: (phone) {
                      //when phone number country code is changed
                      print(phone.completeNumber); //get complete number
                      print(phone.countryCode); // get country code only
                      print(phone.number); // only phone number
                    },
                  )),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 35,
              ),
              /*Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                        "Didn't recieved otp? Resend Now",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.blue,
                        ),
                      ),
              
            ),*/
              SizedBox(height: 150),
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
                          builder: (context) => AddProfile(),
                        ));
                  },
                  padding: EdgeInsets.all(13),
                  color: Color(0xFF1F89CA),
                  child: Text('Proceed',
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
    );
  }
}
