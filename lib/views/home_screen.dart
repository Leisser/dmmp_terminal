import 'package:dmmp_terminal/utils/reusables/reusableText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            padding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal:
                    (MediaQuery.of(context).size.height * .044).ceilToDouble()),
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
              padding: EdgeInsets.only(
                  top: (MediaQuery.of(context).size.height * .038)
                      .ceilToDouble()),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ReuseText(
                    text: "Taxi number UBH 827V",
                    fWeight: FontWeight.bold,
                    size: (MediaQuery.of(context).size.height * .030)
                        .ceilToDouble(),
                  ),
                  SizedBox(
                      height: (MediaQuery.of(context).size.height * .012)
                          .ceilToDouble()),
                  ReuseText(
                    text: "Hi James",
                    size: (MediaQuery.of(context).size.height * .02041)
                        .ceilToDouble(),
                  ),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height * .025)
                        .ceilToDouble(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      HomeCTA(
                        width: (MediaQuery.of(context).size.height * .192)
                            .ceilToDouble(),
                        height: (MediaQuery.of(context).size.height * .192)
                            .ceilToDouble(),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom:
                                        (MediaQuery.of(context).size.height *
                                                .012)
                                            .ceilToDouble()),
                                child: Icon(
                                  Icons.qr_code_scanner_outlined,
                                  size: (MediaQuery.of(context).size.height *
                                          .063)
                                      .ceilToDouble(),
                                  color: Colors.green,
                                ),
                              ),
                              ReuseText(
                                text: "Scan",
                                fWeight: FontWeight.bold,
                                size: (MediaQuery.of(context).size.height *
                                        .02041)
                                    .ceilToDouble(),
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
                      HomeCTA(
                        width: (MediaQuery.of(context).size.height * .192)
                            .ceilToDouble(),
                        height: (MediaQuery.of(context).size.height * .192)
                            .ceilToDouble(),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom:
                                        (MediaQuery.of(context).size.height *
                                                .012)
                                            .ceilToDouble()),
                                child: Icon(
                                  Icons.groups_outlined,
                                  size: (MediaQuery.of(context).size.height *
                                          .063)
                                      .ceilToDouble(),
                                  color: Colors.red,
                                ),
                              ),
                              ReuseText(
                                text: "Passengers",
                                fWeight: FontWeight.bold,
                                size: (MediaQuery.of(context).size.height *
                                        .02041)
                                    .ceilToDouble(),
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height * .030)
                        .ceilToDouble(),
                  ),
                  HomeCTA(
                    width: double.infinity,
                    height: (MediaQuery.of(context).size.height * .255)
                        .ceilToDouble(),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: (MediaQuery.of(context).size.height * .030)
                                .ceilToDouble(),
                            right: (MediaQuery.of(context).size.height * .028)
                                .ceilToDouble(),
                            left: (MediaQuery.of(context).size.height * .028)
                                .ceilToDouble(),
                            bottom: (MediaQuery.of(context).size.height * .012)
                                .ceilToDouble()),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                ReuseText(
                                  text: "Active passengers",
                                  size: (MediaQuery.of(context).size.height *
                                          .02041)
                                      .ceilToDouble(),
                                ),
                                ReuseText(
                                  text: "08",
                                  size: (MediaQuery.of(context).size.height *
                                          .02041)
                                      .ceilToDouble(),
                                ),
                              ],
                            ),
                            SizedBox(
                                height:
                                    (MediaQuery.of(context).size.height * .012)
                                        .ceilToDouble()),
                            Divider(
                              color: Colors.grey,
                              height:
                                  (MediaQuery.of(context).size.height * .00099)
                                      .toPrecision(1),
                            ),
                            SizedBox(
                                height:
                                    (MediaQuery.of(context).size.height * .025)
                                        .ceilToDouble()),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                ReuseText(
                                  text: "Passengers today",
                                  size: (MediaQuery.of(context).size.height *
                                          .02041)
                                      .ceilToDouble(),
                                ),
                                ReuseText(
                                  text: "104",
                                  size: (MediaQuery.of(context).size.height *
                                          .02041)
                                      .ceilToDouble(),
                                ),
                              ],
                            ),
                            SizedBox(
                                height:
                                    (MediaQuery.of(context).size.height * .007)
                                        .ceilToDouble()),
                            Divider(
                              color: Colors.grey,
                              height:
                                  (MediaQuery.of(context).size.height * .00099)
                                      .toPrecision(1),
                            ),
                            SizedBox(
                                height:
                                    (MediaQuery.of(context).size.height * .025)
                                        .ceilToDouble()),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                ReuseText(
                                  text: "Collections Today",
                                  size: (MediaQuery.of(context).size.height *
                                          .02041)
                                      .ceilToDouble(),
                                  fWeight: FontWeight.bold,
                                ),
                                ReuseText(
                                  text: "208,000",
                                  size: (MediaQuery.of(context).size.height *
                                          .02041)
                                      .ceilToDouble(),
                                  fWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                            SizedBox(
                                height:
                                    (MediaQuery.of(context).size.height * .015)
                                        .ceilToDouble()),
                            Divider(
                              color: Colors.grey,
                              height:
                                  (MediaQuery.of(context).size.height * .00071)
                                      .toPrecision(1),
                            ),
                          ],
                        ),
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
      child: child,
    );
  }
}
