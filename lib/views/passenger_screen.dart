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
          body: Column(
        children: [
          const Center(
            child: Text("Passenger"),
          ),
          DataTable(columns: const [
            DataColumn(
              label: ReuseText(
                text: "Passenger",
                fWeight: FontWeight.bold,
                size: 24,
              ),
            ),
            DataColumn(
              label: ReuseText(
                text: "Boarded",
                fWeight: FontWeight.bold,
                size: 24,
              ),
            ),
            DataColumn(
              label: ReuseText(
                text: "Status",
                fWeight: FontWeight.bold,
                size: 24,
              ),
            ),
          ], rows: const [
            DataRow(
              cells: [
                DataCell(
                  ReuseText(
                    text: "0123456789",
                  ),
                ),
                DataCell(
                  ReuseText(
                    text: "Wandegeya",
                  ),
                ),
                DataCell(
                  ReuseText(
                    text: "Onboard",
                  ),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  ReuseText(
                    text: "0123456789",
                  ),
                ),
                DataCell(
                  ReuseText(
                    text: "Wandegeya",
                  ),
                ),
                DataCell(
                  ReuseText(
                    text: "Onboard",
                  ),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  ReuseText(
                    text: "0223456789",
                  ),
                ),
                DataCell(
                  ReuseText(
                    text: "Wandegeya",
                  ),
                ),
                DataCell(
                  ReuseText(
                    text: "Onboard",
                  ),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  ReuseText(
                    text: "0323456789",
                  ),
                ),
                DataCell(
                  ReuseText(
                    text: "Wandegeya",
                  ),
                ),
                DataCell(
                  ReuseText(
                    text: "Onff",
                  ),
                ),
              ],
            ),
          ])
        ],
      )),
    );
  }
}
