import 'package:dmmp_terminal/utils/reusables/reusableInput.dart';
import 'package:dmmp_terminal/views/sigin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'dart:convert';
import 'package:glassmorphism/glassmorphism.dart';

import 'config/constants.dart';
import 'utils/reusables/button.dart';
import 'utils/reusables/reusableText.dart';
// import 'package:kcca_dmmp_mobile/views/home/home.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:http/http.dart' as http;
// import '../../config/base.dart';
// import '../../config/constants.dart';
// import '../../models/authtoken.dart';
// import '../../models/profile.dart';
// import '../../models/user.dart';
// import '../../utils/reusables/button.dart';
// import '../../utils/reusables/text.dart';
// import '../../utils/reusables/textinput.dart';
// import 'resetpassword.dart';
// import 'signup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const SignInPage(),
    );
  }
}
