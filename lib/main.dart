import 'package:dmmp_terminal/utils/reusables/reusableInput.dart';
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

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String? identify;
  String? password;
  TextEditingController identifyController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool? _responseLoading;
  bool? passOb;

  // _login(String username, String password) async {
  //   var url = Uri.parse(AppConstants.baseUrl + "user/login");
  //   bool responseStatus = false;
  //   String _authToken = "";
  //   print("++++++" + "LOGIN FUNCTION" + "+++++++");
  //   // Navigator.pushNamed(context, AppRouter.home);
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     _responseLoading = true;
  //   });
  //   var bodyString = {"username": username, "password": password};

  //   var body = jsonEncode(bodyString);

  //   var response = await http.post(url,
  //       headers: {
  //         "Content-Type": "Application/json",
  //       },
  //       body: body);
  //   print("++++++" + response.body.toString() + "+++++++");
  //   if (response.statusCode == 200) {
  //     final item = json.decode(response.body);
  //     UserModel user = UserModel.fromJson(item);
  //     _authToken = user.token;
  //     prefs.setString("authToken", _authToken);

  //     prefs.setString("firstName", user.firstname);
  //     prefs.setString("lastName", user.lastname);
  //     prefs.setString("email", user.email);
  //     prefs.setString("gender", user.gender);
  //     prefs.setString("phone", user.phone);
  //     prefs.setString("password", password);
  //     prefs.setString("userid", user.userid.toString());
  //     // prefs.setString("dateJoined", user.datecreated.toIso8601String());
  //     prefs.setBool("isclerk", user.isclerk);
  //     prefs.setBool("isadmin", user.isadmin);
  //     prefs.setBool("issuperadmin", user.issuperadmin);
  //     setState(() {
  //       _responseLoading = false;
  //     });
  //     pushAndRemoveUntil(const HomePage());
  //   } else if (response.statusCode == 409) {
  //     setState(() {
  //       _responseLoading = false;
  //     });
  //     showSnackBar("User account not activated.");
  //   } else {
  //     setState(() {
  //       _responseLoading = false;
  //     });
  //     showSnackBar("Authentication Failure: Invalid credentials.");
  //   }
  // }

  @override
  void initState() {
    super.initState();
    _responseLoading = false;
    passOb = false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // key: scaffoldKey,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(248, 221, 7, 0.6),
                Color.fromRGBO(237, 30, 36, 0.1),
              ],
            )),
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GlassmorphicContainer(
                  width: MediaQuery.of(context).size.width * .9,
                  height: MediaQuery.of(context).size.height * .6,
                  borderRadius: 20,
                  blur: 1,
                  alignment: Alignment.bottomCenter,
                  border: .5,
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFFffffff).withOpacity(0.7),
                        const Color(0xFFFFFFFF).withOpacity(0.4),
                      ],
                      stops: const [
                        0.1,
                        1,
                      ]),
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFFffffff).withOpacity(0.5),
                      const Color((0xFFFFFFFF)).withOpacity(0.5),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            ReuseText(
                              text: 'Welcome Back',
                              color: Colors.black,
                              size: 18,
                              fWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            ReuseText(
                              text: 'Sign In',
                              color: Colors.black,
                              size: 16,
                              fWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ReuseInput(
                              controller: identifyController,
                              textInputType: TextInputType.text,
                              text: 'Email Address',
                              action: TextInputAction.next,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ReuseInput(
                              action: TextInputAction.done,
                              textInputType: TextInputType.text,
                              controller: passwordController,
                              obscureText: passOb!,
                              text: 'Password',
                              last: passOb!
                                  ? GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          passOb = !passOb!;
                                        });
                                      },
                                      child: const Icon(Icons.visibility))
                                  : GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          passOb = !passOb!;
                                        });
                                      },
                                      child: const Icon(Icons.visibility_off)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .05,
                        ),
                        _responseLoading!
                            ? SizedBox(
                                width: 40,
                                height: 40,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      AppConstants.primaryColor),
                                ),
                              )
                            : SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .05,
                                width: MediaQuery.of(context).size.width * .5,
                                child: GestureDetector(
                                  onTap: () {
                                    // _login(identifyController.text.trim(),
                                    //     passwordController.text.trim());
                                    // push(const HomePage());
                                  },
                                  child: ReuseButton(
                                    radius: 10,
                                    height: MediaQuery.of(context).size.height *
                                        .04,
                                    width:
                                        MediaQuery.of(context).size.width * .6,
                                    color: const Color.fromRGBO(237, 33, 36, 1),
                                    child: const ReuseText(
                                      text: 'Sign in',
                                      color: Colors.white,
                                      size: 14,
                                      fWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .08,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
