import 'package:flutter/material.dart';
import 'package:instagaram/colors.dart';
import 'package:instagaram/views/add_post.dart';
import 'package:instagaram/views/home_page.dart';
import 'package:instagaram/views/profile.dart';
import 'package:instagaram/views/search.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  final PageController _pageController = PageController();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: webBackgroundColor,
        appBar: AppBar(
          title: const Text(
            'Instagram',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.home,
                color:x==0?primaryColor: secondaryColor,
              ),
              onPressed: () {
                _pageController.jumpToPage(0);
                x = 0;
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color:x==1?primaryColor: secondaryColor,
              ),
              onPressed: () {setState(() {
              });
                _pageController.jumpToPage(1);
                x = 1;
              },
            ),
            IconButton(
                icon: Icon(
                  Icons.add_a_photo,
                  color:x==2?primaryColor: secondaryColor,
                ),
                onPressed: () {setState(() {
                });
                  _pageController.jumpToPage(2);
                  x = 2;
                }),
            IconButton(
              icon: Icon(
                Icons.favorite,
                color:x==3?primaryColor: secondaryColor,
              ),
              onPressed: () {setState(() {
              });
                _pageController.jumpToPage(3);
                x = 3;
              },
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color:x==4?primaryColor: secondaryColor,
              ),
              onPressed: () {setState(() {
              });
                _pageController.jumpToPage(4);
                x = 4;
              },
            ),
          ],
        ),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: const [
            HomePage(),
            Search(),
            AddPost(),
            Center(child: Text('I love you')),
            Profile()
          ],));  }
}
