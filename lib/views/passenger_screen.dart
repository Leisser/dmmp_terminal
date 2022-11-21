import 'package:dmmp_terminal/utils/reusables/reusableText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PassengerScreen extends StatefulWidget {
  const PassengerScreen({super.key});

  @override
  State<PassengerScreen> createState() => _PassengerScreenState();
}

class _PassengerScreenState extends State<PassengerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
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
              children: [
                SizedBox(
                  height: (MediaQuery.of(context).size.height * .025)
                      .ceilToDouble(),
                ),
                Center(
                  child: ReuseText(
                    text: "Passengers",
                    fWeight: FontWeight.bold,
                    size: (MediaQuery.of(context).size.height * .030)
                        .ceilToDouble(),
                  ),
                ),
                DataTable(columns: [
                  DataColumn(
                    label: ReuseText(
                      text: "Passenger",
                      fWeight: FontWeight.bold,
                      size: (MediaQuery.of(context).size.height * .02041)
                          .ceil()
                          .toDouble(),
                    ),
                  ),
                  DataColumn(
                    label: ReuseText(
                      text: "Boarded",
                      fWeight: FontWeight.bold,
                      size: (MediaQuery.of(context).size.height * .02041)
                          .ceilToDouble(),
                    ),
                  ),
                  DataColumn(
                    label: ReuseText(
                      text: "Status",
                      fWeight: FontWeight.bold,
                      size: (MediaQuery.of(context).size.height * .02041)
                          .ceilToDouble(),
                    ),
                  ),
                ], rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        ReuseText(
                          text: "0123456789",
                          size: (MediaQuery.of(context).size.height * .017)
                              .ceilToDouble(),
                        ),
                      ),
                      DataCell(
                        ReuseText(
                          text: "Wandegeya",
                          size: (MediaQuery.of(context).size.height * .017)
                              .ceilToDouble(),
                        ),
                      ),
                      DataCell(
                        ReuseText(
                          text: "Onboard",
                          size: (MediaQuery.of(context).size.height * .017)
                              .ceilToDouble(),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        ReuseText(
                          text: "0123456789",
                          size: (MediaQuery.of(context).size.height * .017)
                              .ceilToDouble(),
                        ),
                      ),
                      DataCell(
                        ReuseText(
                          text: "Wandegeya",
                          size: (MediaQuery.of(context).size.height * .017)
                              .ceilToDouble(),
                        ),
                      ),
                      DataCell(
                        ReuseText(
                          text: "Onboard",
                          size: (MediaQuery.of(context).size.height * .017)
                              .ceilToDouble(),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        ReuseText(
                          text: "0223456789",
                          size: (MediaQuery.of(context).size.height * .017)
                              .ceilToDouble(),
                        ),
                      ),
                      DataCell(
                        ReuseText(
                          text: "Wandegeya",
                          size: (MediaQuery.of(context).size.height * .017)
                              .ceilToDouble(),
                        ),
                      ),
                      DataCell(
                        ReuseText(
                          text: "Onboard",
                          size: (MediaQuery.of(context).size.height * .017)
                              .ceilToDouble(),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        ReuseText(
                          text: "0323456789",
                          size: (MediaQuery.of(context).size.height * .017)
                              .ceilToDouble(),
                        ),
                      ),
                      DataCell(
                        ReuseText(
                          text: "Wandegeya",
                          size: (MediaQuery.of(context).size.height * .017)
                              .ceilToDouble(),
                        ),
                      ),
                      DataCell(
                        ReuseText(
                          text: "Off",
                          size: (MediaQuery.of(context).size.height * .017)
                              .ceilToDouble(),
                        ),
                      ),
                    ],
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
