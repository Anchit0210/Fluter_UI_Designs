import 'dart:ffi';

import 'package:flutter/material.dart';

class Day19UI extends StatefulWidget {
  const Day19UI({super.key});

  @override
  State<Day19UI> createState() => _Day19UIState();
}

class _Day19UIState extends State<Day19UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 500,
                    // color: Colors.amber,
                    child: Stack(children: [
                      Positioned(
                          child: Container(
                        height: 450,
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbX14eutjSbSh7zZPCmom7aNbIUkVKppGqjQ&usqp=CAU"),fit: BoxFit.cover)
                        ),
                      )),
                      Positioned(
                          bottom: 0,
                          right: 25,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                            radius: 50,
                          )),
                      Positioned(
                          top: 60,
                          left: 30,
                          child: Container(
                            child: Icon(Icons.arrow_back),
                          )),
                      Positioned(
                          top: 60,
                          right: 30,
                          child: Container(
                            child: Icon(Icons.heart_broken_outlined),
                          )),
                    ]),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              // color: Colors.blue,
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Madrid City Tour For Designer',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'This is random discription of title',
                    style: TextStyle(fontSize: 15, color: Colors.grey[200]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText('20', Icons.favorite_rounded),
                  rowIconText('34', Icons.upload),
                  rowIconText('82', Icons.message),
                  rowIconText('295', Icons.face),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Divider(),
            Container(padding: EdgeInsets.all(10) ,child: Text("Dummy text is text that is used in the publishing industry or by web designers to occupy the space which will later be filled with 'real' content. This is required when, for example, the final text is not yet available. Dummy text is also known as 'fill text'."),)
          ],
        ),
      ),
    );
  }
}

Widget rowIconText(String text, IconData icon) {
  return Row(
    children: [
      Text(text,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      SizedBox(width: 5,),
      Icon(icon)
    ],
  );
}
