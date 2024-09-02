import 'package:flutter/material.dart';
import 'package:instagaram/views/sign_in.dart';
//import 'package:instagaram/responsive/responsive.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
     home:const Login()//Reg ResponsiveDesign()//mob: Mobile(),web: WebScreen(),),
    );
  }
}
