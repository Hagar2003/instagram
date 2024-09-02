import 'package:flutter/material.dart';
import 'package:instagaram/colors.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
      final double widthScreen = MediaQuery.of(context).size.width;
    return Container(decoration: 
      BoxDecoration(
            color: mobileBackgroundColor,
            borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.symmetric(
            vertical: 11, horizontal: widthScreen > 600 ? widthScreen / 6 : 0),
      child: Column(//mainAxisAlignment: MainAxisAlignment.start,
              children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Row(children:[
       Container(padding: const EdgeInsets.all(3),
       decoration: const BoxDecoration(shape: BoxShape.circle,
       color: Color.fromARGB(255, 92, 78, 78)),
         child: const CircleAvatar(
                            radius: 26,
                            backgroundImage: NetworkImage(
                                "https://i.pinimg.com/564x/94/df/a7/94dfa775f1bad7d81aa9898323f6f359.jpg"),
                          ),
       ),
         const Text('   username'),
        ]),
        IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                  )),
        ])),
        Image.network(
              // widget.snap["postUrl"],
              "https://cdn1-m.alittihad.ae/store/archive/image/2021/10/22/6266a092-72dd-4a2f-82a4-d22ed9d2cc59.jpg?width=1300",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
            ),
      Padding(
              padding: const EdgeInsets.symmetric(vertical: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.comment_outlined,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_outline),
                  ),
                ],
              ),
            ),
      Container(width:double.infinity,margin:   const EdgeInsets.fromLTRB(0, 0, 9,6),
      child: 
      const Text('  10 Likes',style:
       TextStyle(color:Colors.grey,fontSize: 19),)),
       const Row(
              children: [
                // SizedBox(
                //   width: 5,
                // ),
                Text(
                  // "${widget.snap["username"]}",
                  "  USERNAME ",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 189, 196, 199)),
                ),
                Text(
                  // " ${widget.snap["description"]}",
                  " Sidi Bou Said ♥",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 189, 196, 199)),
                ),
              ],),
              GestureDetector(
                child: Container(margin:
                 const EdgeInsets.fromLTRB(0, 0, 9, 2),
                  width: double.infinity,
                  child: const Text('  view all 100 comments',
                  style: TextStyle(fontSize: 19,color: secondaryColor),
                   textAlign: TextAlign.start,)),
              ),
              Container(margin:
                 const EdgeInsets.fromLTRB(0, 0, 9, 2),
                  width: double.infinity,
                  child: const Text('  10 june 2022',
                  style: TextStyle(fontSize: 19,color: secondaryColor),
                   textAlign: TextAlign.start,)),
            ]),
    )  ;      
  }
}
