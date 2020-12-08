import 'package:Connect_in_single/screens/login%20or%20signup.dart';
import 'package:flutter/material.dart';
import 'package:Connect_in_single/screens/getstartedscreen.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:Connect_in_single/themes.dart';
import 'package:Connect_in_single/screens/tabs.dart';

void main() {
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitUp,
  // ]);
  runApp(AppStateContainer(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: AppStateContainer.of(context).theme,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

/// state is passed down with an inherited widget

class AppStateContainer extends StatefulWidget {
  final Widget child;

  AppStateContainer({@required this.child});
  @override
  _AppStateContainerState createState() => _AppStateContainerState();

  static _AppStateContainerState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_InheritedStateContainer)
            as _InheritedStateContainer)
        .data;
  }
}

class _AppStateContainerState extends State<AppStateContainer> {
  ThemeData _theme = Themes.getTheme(Themes.DARK_THEME_CODE);
  int themeCode = Themes.DARK_THEME_CODE;

  static const SHARED_PREF_KEY_THEME = "theme_code";

  get accentColor => null;
  @override
  initState() {
    super.initState();
    SharedPreferences.getInstance().then((sharedPref) {
      setState(() {
        themeCode =
            sharedPref.getInt(SHARED_PREF_KEY_THEME) ?? Themes.DARK_THEME_CODE;
        this._theme = Themes.getTheme(themeCode);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print(theme.accentColor);
    return _InheritedStateContainer(
      data: this,
      child: widget.child,
    );
  }

  ThemeData get theme => _theme;
  updateTheme(int themeCode) {
    setState(() {
      _theme = Themes.getTheme(themeCode);
      this.themeCode = themeCode;
    });
    SharedPreferences.getInstance().then((sharedPref) {
      sharedPref.setInt(SHARED_PREF_KEY_THEME, themeCode);
    });
  }
}

class _InheritedStateContainer extends InheritedWidget {
  final _AppStateContainerState data;

  const _InheritedStateContainer({
    Key key,
    @required this.data,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_InheritedStateContainer oldWidget) => true;
}
