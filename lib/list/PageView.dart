import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViews extends StatefulWidget{
  @override
  State<PageViews> createState() => _PageViewsState();
}

class _PageViewsState extends State<PageViews> {

  List<Color> _colors = [Colors.redAccent,Colors.tealAccent,Colors.deepPurpleAccent,Colors.blueAccent,Colors.deepOrangeAccent,Colors.purpleAccent];
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemBuilder: (context,index){
            return Container(
              color: _colors[index],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    child: Text("${index + 1}",
                      style: TextStyle(fontSize: 50,color: _colors[index]),
                    ),
                  )
                ],
              ),
            );
          },
        itemCount: _colors.length,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        onPageChanged: (index){
            setState(() {
              currentpage = index;
            });
        },

      )
    );
  }
}