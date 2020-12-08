import 'dart:io';
import 'package:Connect_in_single/main.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:Connect_in_single/screens/Account_created.dart';


class AddProfile extends StatefulWidget {
  @override
  _AddProfileState createState() => _AddProfileState();
}

class _AddProfileState extends State<AddProfile> {
  File _image;
  String _date = "Not set";

  getImageFile(ImageSource source) async {
    //Clicking or Picking from Gallery

    var image = await ImagePicker.pickImage(source: source);

    //Cropping the image

    File croppedFile = await ImageCropper.cropImage(
        sourcePath: image.path,
        maxWidth: 512,
        maxHeight: 512,
        aspectRatioPresets: Platform.isAndroid
            ? [
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio3x2,
                CropAspectRatioPreset.original,
                CropAspectRatioPreset.ratio4x3,
                CropAspectRatioPreset.ratio16x9
              ]
            : [
                CropAspectRatioPreset.original,
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio3x2,
                CropAspectRatioPreset.ratio4x3,
                CropAspectRatioPreset.ratio5x3,
                CropAspectRatioPreset.ratio5x4,
                CropAspectRatioPreset.ratio7x5,
                CropAspectRatioPreset.ratio16x9
              ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'Crop your image',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        iosUiSettings: IOSUiSettings(
          title: 'Crop your image',
        ));

    //Compress the image

    var result = await FlutterImageCompress.compressAndGetFile(
        croppedFile.path, image.path,
        quality: 80, format: CompressFormat.jpeg);

    setState(() {
      _image = result;
      print(_image.lengthSync());
    });
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                getImageFile(ImageSource.camera);
              },
              label: Text("Camera"),
            ),
            FlatButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                getImageFile(ImageSource.gallery);
              },
              label: Text("Gallery"),
            ),
          ])
        ],
      ),
    );
  }

  Widget imageProfile() {
    return Center(
      child: Stack(children: <Widget>[
        CircleAvatar(
            backgroundColor: Color(0xFF3696D2),
            radius: 75.0,
            child: CircleAvatar(
              radius: 70.0,
              backgroundImage: _image == null
                  ? AssetImage("assets/images/cis_logo.png")
                  : FileImage(File(_image.path)),
            )),
        Positioned(
          bottom: 20.0,
          right: 20.0,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomSheet()),
              );
            },
            child: Icon(
              Icons.camera_alt,
              color: AppStateContainer.of(context).theme.disabledColor,
              size: 25.0,
            ),
          ),
        ),
      ]),
    );
  }

  Widget nameTextField() {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 25),
        child: TextField(
          obscureText: false,
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
              hintText: "Username",
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
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                color: AppStateContainer.of(context).theme.accentColor),
                borderRadius: BorderRadius.circular(10),
              )),
        ));
  }

  Widget bioTextField() {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 25),
        child: TextField(
          obscureText: false,
          maxLines: 7,
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
              hintText: "Bio-Tell something about yourself",
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
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppStateContainer.of(context).theme.accentColor),
                borderRadius: BorderRadius.circular(10),
              )),
        ));
  }

  @override
  Widget build(BuildContext context) {
    // print(_image?.lengthSync());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppStateContainer.of(context).theme.primaryColor,
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
              color: AppStateContainer.of(context).theme.primaryColor),
          child: Form(
              child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
              SizedBox(height: 30),
              imageProfile(),
              SizedBox(height: 20),
              nameTextField(),
              SizedBox(height: 20),
              bioTextField(),
              SizedBox(
                height: 120.0,
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
                          builder: (context) => Accountcreated(),
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
          )),
        ));
  }
}
