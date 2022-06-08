import 'package:flutter/material.dart';
import 'package:my_private/pages/bubble_stories.dart';
import 'package:my_private/pages/insta_body.dart';

class InstaHome extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: Color.fromARGB(255, 13, 14, 13),
    foregroundColor: Colors.black,
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(
        height: 95.0, child: Image.asset("assets/images/outstagram.png")),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: Column(
        children: [
          
          ListView(
            
            children: [
              BubbleStories(text: 'text'),
               BubbleStories(text: 'text'),
          BubbleStories(text: 'text'),
            ],
          ),
         
        
          InstaBody(),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                ),
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: null,
              ),
              new IconButton(
                icon: Icon(
                  Icons.add_box,
                ),
                onPressed: null,
              ),
              new IconButton(
                icon: Icon(
                  Icons.favorite,
                ),
                onPressed: null,
              ),
              new IconButton(
                icon: Icon(
                  Icons.account_box,
                ),
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
