import 'package:dmmp_terminal/utils/reusables/reusableText.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 35),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromRGBO(248, 221, 7, 0.6).withOpacity(.1),
                const Color.fromRGBO(237, 30, 36, 0.1).withOpacity(.1),
              ],
            )),
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const ReuseText(
                    text: "Taxi number UBH 827V",
                    fWeight: FontWeight.bold,
                    size: 24,
                  ),
                  const SizedBox(height: 10),
                  const ReuseText(
                    text: "Hi James",
                    size: 16,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      HomeCTA(
                        width: 150,
                        height: 150,
                        child: Center(
                          child: ReuseText(
                            text: "Start a Trip",
                            fWeight: FontWeight.bold,
                            size: 16,
                          ),
                        ),
                      ),
                      HomeCTA(
                        width: 150,
                        height: 150,
                        child: Center(
                          child: ReuseText(
                            text: "End a Trip",
                            fWeight: FontWeight.bold,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  HomeCTA(
                    width: double.infinity,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 24.0, right: 22.0, left: 22.0, bottom: 10.0),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              ReuseText(
                                text: "Active passengers",
                                size: 16,
                              ),
                              ReuseText(
                                text: "08",
                                size: 16,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Divider(
                            color: Colors.grey,
                            height: 0.8,
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              ReuseText(
                                text: "Passengers today",
                                size: 16,
                              ),
                              ReuseText(
                                text: "104",
                                size: 16,
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const Divider(
                            color: Colors.grey,
                            height: 0.8,
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              ReuseText(
                                text: "Collections Today",
                                size: 16,
                                fWeight: FontWeight.bold,
                              ),
                              ReuseText(
                                text: "208,000",
                                size: 16,
                                fWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          const Divider(
                            color: Colors.grey,
                            height: 0.6,
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
      ),
    );
  }
}

class HomeCTA extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? child;

  const HomeCTA(
      {super.key,
      required this.width,
      required this.height,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(16.0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        // border: const Border(
        //   top: BorderSide(color: Colors.white, width: 1.0),
        //   left: BorderSide(color: Colors.white, width: 1.0),
        // ),
        color: const Color(0xffF6F2EE),
        border: Border.all(color: Colors.white, width: 1.0),
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(94, 158, 158, 158),
            blurRadius: 16.0, // soften the shadow
            spreadRadius: 0.08, //extend the shadow
            offset: Offset(
              0.0, // Move to right 5
              3.0, // Move to bottom 5
            ),
          ),
        ],
      ),
      child: Center(child: child),
    );
  }
}
