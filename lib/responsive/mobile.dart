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
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: const Text('mobile screen')),
        bottomNavigationBar: CupertinoTabBar(
            onTap: (index) {setState(() {
              
            });
              _pageController.jumpToPage(index);
              x = index;
            },
            backgroundColor: mobileBackgroundColor,
            items: [
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.home,
                    color: x == 0 ? primaryColor : secondaryColor,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.search,
                    color: x == 1 ? primaryColor : secondaryColor,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.add_circle,
                    color: x == 2 ? primaryColor : secondaryColor,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.favorite,
                    color: x == 3 ? primaryColor : secondaryColor,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.person,
                    color: x == 4 ? primaryColor : secondaryColor,
                  )),
            ]),
        body: PageView(
          //children are your views!!!
          // onPageChanged: (index) {},
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: const [
            HomePage(),
            Search(),
            AddPost(),
            Center(child: Text('I love you')),
            Profile()
          ],
        ));
  }
}
