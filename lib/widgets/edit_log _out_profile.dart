import 'package:flutter/material.dart';
import 'package:instagaram/colors.dart';

class EditLog extends StatelessWidget {
  const EditLog({super.key});

  @override
  Widget build(BuildContext context) {
      final double widthScreen = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: Colors.white,
              size: 23.0,
            ),
            label: Text(
              " Edit Profile",
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(mobileBackgroundColor),
              padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(vertical:widthScreen>600? 18: 14, 
                  horizontal:23)),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                      color: const Color.fromARGB(255, 126, 124, 124)))),
            ),
          ),
          SizedBox(width: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
              color: Colors.white,
              size: 23.0,
            ),
            label: Text(
              " Log out    ",
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                  const Color.fromARGB(143, 255, 55, 112)),
              padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(vertical: widthScreen>600? 18: 14,
                   horizontal: 23)),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                      color: const Color.fromARGB(255, 126, 124, 124)))),
            ),
          ),
        ],
      ),
    );
  }
}
