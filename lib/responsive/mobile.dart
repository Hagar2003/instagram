import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagaram/colors.dart';
import 'package:instagaram/views/add_post.dart';
import 'package:instagaram/views/home_page.dart';
import 'package:instagaram/views/profile.dart';
import 'package:instagaram/views/search.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _WebScreenState();
}

class _WebScreenState extends State<Mobile> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('mobile screen')),
        bottomNavigationBar: CupertinoTabBar(
            onTap: (index) {
              _pageController.jumpToPage(index);
            },
            backgroundColor: mobileBackgroundColor,
            items: const [
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.home,
                    color: primaryColor,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.search,
                    color: secondaryColor,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.add_circle,
                    color: secondaryColor,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.favorite,
                    color: secondaryColor,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.person,
                    color: secondaryColor,
                  )),
            ]),
        body: PageView(
          //children are your views!!!
          // onPageChanged: (index) {},
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: const [HomePage(), Search(), AddPost(), 
          Center(child:Text('I love you'))
          ,
          Profile()],
        ));
  }
}
