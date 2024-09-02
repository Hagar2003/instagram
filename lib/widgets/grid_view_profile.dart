import 'package:flutter/material.dart';

class GridViewProfile extends StatelessWidget {
  const GridViewProfile({super.key});

  @override
  Widget build(BuildContext context) {
      final double widthScreen = MediaQuery.of(context).size.width;
    return Padding(
      padding:widthScreen>600? const EdgeInsets.all(24.0): EdgeInsets.all(5.0) ,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.network(
                // widget.snap["postUrl"],
                "https://cdn1-m.alittihad.ae/store/archive/image/2021/10/22/6266a092-72dd-4a2f-82a4-d22ed9d2cc59.jpg?width=1300",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
              ),
            );
          }),
    );
  }
}
