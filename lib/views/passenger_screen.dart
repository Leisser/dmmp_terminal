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
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: ReuseText(
                  text: "Passengers",
                  fWeight: FontWeight.bold,
                  size: 24,
                ),
              ),
              DataTable(columns: const [
                DataColumn(
                  label: ReuseText(
                    text: "Passenger",
                    fWeight: FontWeight.bold,
                    size: 16,
                  ),
                ),
                DataColumn(
                  label: ReuseText(
                    text: "Boarded",
                    fWeight: FontWeight.bold,
                    size: 16,
                  ),
                ),
                DataColumn(
                  label: ReuseText(
                    text: "Status",
                    fWeight: FontWeight.bold,
                    size: 16,
                  ),
                ),
              ], rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      ReuseText(
                        text: "0123456789",
                        size: 14,
                      ),
                    ),
                    DataCell(
                      ReuseText(
                        text: "Wandegeya",
                        size: 14,
                      ),
                    ),
                    DataCell(
                      ReuseText(
                        text: "Onboard",
                        size: 14,
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      ReuseText(
                        text: "0123456789",
                        size: 14,
                      ),
                    ),
                    DataCell(
                      ReuseText(
                        text: "Wandegeya",
                        size: 14,
                      ),
                    ),
                    DataCell(
                      ReuseText(
                        text: "Onboard",
                        size: 14,
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      ReuseText(
                        text: "0223456789",
                        size: 14,
                      ),
                    ),
                    DataCell(
                      ReuseText(
                        text: "Wandegeya",
                        size: 14,
                      ),
                    ),
                    DataCell(
                      ReuseText(
                        text: "Onboard",
                        size: 14,
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      ReuseText(
                        text: "0323456789",
                        size: 14,
                      ),
                    ),
                    DataCell(
                      ReuseText(
                        text: "Wandegeya",
                        size: 14,
                      ),
                    ),
                    DataCell(
                      ReuseText(
                        text: "Off",
                        size: 14,
                      ),
                    ),
                  ],
                ),
              ])
            ],
          ),
        ),
      )),
    );
  }
}
