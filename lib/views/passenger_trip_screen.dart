import 'package:dmmp_terminal/config/get_dimensions.dart';
import 'package:dmmp_terminal/utils/reusables/reusableText.dart';
import 'package:dmmp_terminal/views/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class PassengerTripScreen extends StatefulWidget {
  const PassengerTripScreen({super.key});

  @override
  State<PassengerTripScreen> createState() => _PassengerTripScreenState();
}

class _PassengerTripScreenState extends State<PassengerTripScreen> {
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
              child: Column(
                children: <Widget>[
                  // top
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ReuseText(
                              text: "0123456789",
                              size:
                                  (MediaQuery.of(context).size.height * .02041)
                                      .ceilToDouble(),
                              fWeight: FontWeight.bold,
                            ),
                            ReuseText(
                              text: "1,280",
                              size:
                                  (MediaQuery.of(context).size.height * .02041)
                                      .ceilToDouble(),
                              fWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        SizedBox(
                            height: (MediaQuery.of(context).size.height * .012)
                                .ceilToDouble()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ReuseText(
                              text: "Card",
                              color: const Color(0xff727272),
                              size: (MediaQuery.of(context).size.height * .015)
                                  .ceilToDouble(),
                            ),
                            ReuseText(
                              text: "UGX",
                              color: const Color(0xff727272),
                              size: (MediaQuery.of(context).size.height * .015)
                                  .ceilToDouble(),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: (MediaQuery.of(context).size.height * .012)
                                .ceilToDouble()),
                        Divider(
                          color: const Color.fromARGB(255, 69, 69, 69),
                          height: (MediaQuery.of(context).size.height * .00099)
                              .toPrecision(1),
                        ),
                        SizedBox(
                            height: (MediaQuery.of(context).size.height * .038)
                                .toPrecision(1)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ReuseText(
                              text: "DURATION",
                              color: const Color(0xff727272),
                              size:
                                  (MediaQuery.of(context).size.height * .02041)
                                      .ceilToDouble(),
                              fWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        SizedBox(
                            height: (MediaQuery.of(context).size.height * .012)
                                .ceilToDouble()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ReuseText(
                              text: "20 minutes",
                              // color: const Color(0xff727272),
                              size: (MediaQuery.of(context).size.height * .015)
                                  .ceilToDouble(),
                            ),
                            ReuseText(
                              text: (MediaQuery.of(context).size.height * .255)
                                  .ceilToDouble()
                                  .toString(),
                              // color: const Color(0xff727272),
                              size: (MediaQuery.of(context).size.height * .015)
                                  .ceilToDouble(),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: (MediaQuery.of(context).size.height * .012)
                                .ceilToDouble()),
                        Divider(
                          color: const Color.fromARGB(255, 69, 69, 69),
                          height: (MediaQuery.of(context).size.height * .00099)
                              .toPrecision(1),
                        ),
                        SizedBox(
                            height: (MediaQuery.of(context).size.height * .051)
                                .toPrecision(1)),
                        HomeCTA(
                          width: double.infinity,
                          height: 100,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left:
                                    (MediaQuery.of(context).size.height * .025)
                                        .ceilToDouble()),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                ReuseText(
                                  text: "PICKUP",
                                  color: const Color(0xff727272),
                                  size: (MediaQuery.of(context).size.height *
                                          .017)
                                      .ceilToDouble(),
                                ),
                                SizedBox(
                                    height:
                                        (MediaQuery.of(context).size.height *
                                                .012)
                                            .ceilToDouble()),
                                ReuseText(
                                  text: "Wandegeya - Ntinda stage",
                                  // color: const Color(0xff727272),
                                  fWeight: FontWeight.bold,
                                  size: (MediaQuery.of(context).size.height *
                                          .017)
                                      .ceilToDouble(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
