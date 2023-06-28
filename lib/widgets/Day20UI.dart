import 'package:flutter/material.dart';

class Day20UI extends StatelessWidget {
  const Day20UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          'wanda.s',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        titleSpacing: -10,
      ),
      body: Container(
        // Main Column
        child: Column(
          children: [
            Container(
              height: 180,
              // color: Colors.red,
              child: Row(
                children: [
                  // Upper Left Side
                  Container(
                    width: 170,
                    padding: EdgeInsets.all(10),
                    // color: Colors.purple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Wanda S.',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Text(
                          'Photographer / New York ',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Upper Right Side
                  Expanded(
                    child: Container(
                      // color: Colors.orange,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // margin: EdgeInsets.only(top: 45),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                valueperson('150', 'Posts'),
                                valueperson("5K", "Followers"),
                                valueperson('100', 'following'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Follow'),
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18)))),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 42,
                                  width: 42,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.blue, width: 2),
                                  ),
                                  child: Icon(Icons.arrow_downward_sharp),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              // color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 63,
                        width: 63,
                        margin: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                            border: Border.all(color: Colors.black)),
                      ),
                      Text("title")
                    ],
                  );
                },
              ),
            ),
            Divider(),
            Container(
              height: 50,
              // color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  Divider(),
                  Text(
                    "Site",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  Divider(),
                  Text(
                    "Phone",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: Container(
                // color: Colors.yellow,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,),
                      itemCount: 11,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(5),
                      // color: Colors.red,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)
                      ),
                      );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget valueperson(String num, String text) {
    return Column(
      children: [
        Text(
          num,
          style: TextStyle(fontSize: 20),
        ),
        Text(text),
      ],
    );
  }
}
