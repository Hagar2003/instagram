import 'package:flutter/material.dart';
import 'package:instagaram/colors.dart';
import 'package:instagaram/widgets/edit_log%20_out_profile.dart';
import 'package:instagaram/widgets/grid_view_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: mobileBackgroundColor,
        appBar: AppBar(
            backgroundColor: mobileBackgroundColor,
            title: const Text('Hagar Adel')),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 85, 76, 76)),
                child: const CircleAvatar(
                  radius: 34,
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/564x/94/df/a7/94dfa775f1bad7d81aa9898323f6f359.jpg"),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Column(children: [
                Text(
                  '1',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text('Posts',
                    style: TextStyle(fontSize: 18, color: Colors.grey))
              ]),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    '8',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text('Followers',
                      style: TextStyle(fontSize: 18, color: Colors.grey))
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    '15',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text('Following',
                      style: TextStyle(fontSize: 18, color: Colors.grey))
                ],
              )
            ]),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(10, 15, 0, 0),
            child: Text(
              '   Cute & nice girl',
              style: TextStyle(
                color: const Color.fromARGB(255, 242, 242, 242),
                fontSize: 17,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: primaryColor,
            thickness:widthScreen>600? 0.06 : .34,
          ),
          SizedBox(
            height: 15,
          ),
          EditLog(),
        SizedBox(height: 25,),
          Expanded(
            child: GridViewProfile()
          ),
        ]));
  }
}
