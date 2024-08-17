import 'package:flutter/material.dart';
import 'package:instagaram/colors.dart';
import 'package:instagaram/widgets/home_body.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: webBackgroundColor,
      appBar: AppBar(    title: const Text(
            'Instagram',
            style: TextStyle(color: Colors.white, fontSize: 25),),
           actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: primaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.add_a_photo,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
        ],
              ),
              body:Container(decoration: BoxDecoration(
                color: mobileBackgroundColor,
                borderRadius: BorderRadius.circular(16)),
                margin:EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.height/6,5,MediaQuery.of(context).size.height/6,6),
                child: HomeBody())
    );
  }
}