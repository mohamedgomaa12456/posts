import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Posts());
}

class Posts extends StatefulWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  bool _isLiked = false;
  bool _isCommented = false;
  bool _isShared = false;
  int _Num =0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Posts"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(),
              title: Text(
                "Mohamed Gom3a",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "10 oct",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
              "صلي على محمد"
              ,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,),
              child: Row(
                children: [
                  Icon(Icons.thumb_up),
                Text(_Num.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _isLiked = !_isLiked;
                        _Num++;
                      });
                    },
                    icon: Icon(_isLiked
                        ? Icons.thumb_up_off_alt
                        : Icons.thumb_up_off_alt_outlined),
                    label: Text("Like"
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _isCommented = !_isCommented;
                      });
                    },
                    icon: Icon(_isCommented ? Icons.comment : Icons.comment),
                    label: Text(
                      _isCommented ? "comment" : "Un Comment",
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _isShared = !_isShared;
                      });
                    },
                    icon: Icon(Icons.share),
                    label: Text(
                      _isShared ? "Share" : "Un Share",
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
