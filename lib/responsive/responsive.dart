// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:instagaram/responsive/mobile.dart';
import 'package:instagaram/responsive/web.dart';

class ResponsiveDesign extends StatefulWidget {
  // final mob;
  // final web;
  const ResponsiveDesign({super.key, });
  //required this.mob, required this.web});

  @override
  State<ResponsiveDesign> createState() => _ResponsiveDesignState();
}

class _ResponsiveDesignState extends State<ResponsiveDesign> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext, BoxConstraints) {
      if (BoxConstraints.maxWidth > 600) {
        return const WebScreen();
      } else {
        return const Mobile();
      }
    });
  }
}
