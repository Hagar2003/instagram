import 'package:flutter/material.dart';
import 'package:instagaram/colors.dart';
import 'package:instagaram/widgets/home_body.dart';

//import 'package:flutter_svg/flutter_svg.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(backgroundColor: Colors.black,
        appBar:widthScreen<600? AppBar(
          backgroundColor: mobileBackgroundColor,
          title: const Text(
            'Instagram',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.messenger_outline,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.logout,
                )),
          ],
        ):AppBar(),
        // ignore: prefer_const_constructors
        body: HomeBody());
  }
}
