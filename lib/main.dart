import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoapp/pages/Login_page.dart';
import 'package:todoapp/pages/home.dart';
import 'package:todoapp/pages/onboarding.dart';
import 'package:todoapp/pages/personaltask.dart';
import 'package:todoapp/pages/profile.dart';
import 'package:todoapp/pages/util.dart';
import 'package:todoapp/pages/signup_page.dart';
import 'package:todoapp/pages/task.dart';
import 'package:todoapp/utils/routes.dart';
import 'pages/util.dart';

void main() => runApp(App());

class App extends StatefulWidget {


  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, //top bar color
      ),
    );
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: CustomColors.GreyBackground,
        fontFamily: 'rubik',
      ),
      // home: Loginpage(),
      initialRoute: MyRoutes.LoginRoute,
      routes: {
        MyRoutes.HomeRoute: (context) => Home(),
         MyRoutes.LoginRoute: (context) => Loginpage(),
          MyRoutes.OnboardingRoute: (context) => Onboarding(),
           MyRoutes.SignupRoute: (context) => signup(),
            MyRoutes.TaskRoute: (context) => Task(),
            MyRoutes.PersonalRoute: (context)=>personal(),
            MyRoutes.profileRoute: (context)=>profile(),

      },
    );
  }
}
