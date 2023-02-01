// ignore_for_file: unused_import, unnecessary_import, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, implementation_imports

import 'dart:math';

import 'package:flutter/material.dart';

class Messanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/1617170451423285248/PO1zEAz4_400x400.jpg"),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  size: 16.0,
                  color: Colors.white,
                )),
          ),
          IconButton(
            onPressed: (() {}),
            icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 17.0,
                  color: Colors.white,
                )),
          ),
        ],
        titleSpacing: 20.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey[300],
              ),
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text('search'),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 100.0,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildstory(),
                separatorBuilder: (context, index) => SizedBox(
                  width: 20.0,
                ),
                itemCount: 30,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: ((context, index) => buildchat()),
              separatorBuilder: ((context, index) => SizedBox(
                    height: 15.0,
                  )),
              itemCount: 30,
            ),
          ]),
        ),
      ),
    );
  }

  Widget buildstory() => Row(
        children: [
          Container(
            width: 60.0,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://pbs.twimg.com/profile_images/1617170451423285248/PO1zEAz4_400x400.jpg"),
                    ),
                    CircleAvatar(
                      radius: 8.5,
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        bottom: 2.0,
                        end: 2.0,
                      ),
                      child: CircleAvatar(
                        radius: 7.0,
                        backgroundColor: Colors.lightGreenAccent,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Abdallah abdelwahab akl',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      );
  Widget buildchat() => Container(
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://pbs.twimg.com/profile_images/1617170451423285248/PO1zEAz4_400x400.jpg"),
                    ),
                    CircleAvatar(
                      radius: 8.5,
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        bottom: 2.0,
                        end: 2.0,
                      ),
                      child: CircleAvatar(
                        radius: 7.0,
                        backgroundColor: Colors.lightGreenAccent,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Abdallah abdelwahab'),
                    Row(children: [
                      Text('hello my friend'),
                      SizedBox(
                        width: 80.0,
                      ),
                      Text('12:43 PM'),
                      SizedBox(
                        width: 15.0,
                      ),
                      CircleAvatar(
                        radius: 5.0,
                        backgroundColor: Colors.blueAccent,
                      ),
                    ]),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
}
