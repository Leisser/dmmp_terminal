import 'package:flutter/material.dart';

Gradient scaffoldback = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color.fromRGBO(237, 237, 237, 1),
    Color.fromRGBO(241, 241, 241, 1),
  ],
);

BoxDecoration decorateIt = BoxDecoration(
  gradient: scaffoldback,
);

Color primaryColor = const Color(0xFF2A2D3E);
