import 'package:dmmp_terminal/views/home_screen.dart';
import 'package:dmmp_terminal/views/passenger_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'dart:convert';

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
        primarySwatch: Colors.blue,
      ),
      home: const PassengerScreen(),
      // home: const SignInPage(),
    );
  }
}
