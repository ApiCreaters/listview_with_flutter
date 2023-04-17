import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListwheelScrollview extends StatefulWidget{
  @override
  State<ListwheelScrollview> createState() => _ListwheelScrollviewState();
}

class _ListwheelScrollviewState extends State<ListwheelScrollview> {
  final List<int> _list = List<int>.generate(20, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent.shade100,
      body: SafeArea(
        child: ListWheelScrollView(
            itemExtent: 150,
            diameterRatio: 2.5,
            squeeze: 0.9,
            offAxisFraction: -0.4,
            children: _list.map((e) => Container(
              height: 150,
              width: MediaQuery.of(context).size.width*0.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.purple.shade50,Colors.purple.shade100,Colors.purple.shade200,Colors.purple.shade400]
                  ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),bottomRight: Radius.circular(40.0))
              ),
              child: Center(
                child: Text(
                  "${e + 1}",
                  style: TextStyle(fontFamily: String.fromCharCode(2),fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),
                ),
              ),
            )).toList()

        ),
      ),
    );
  }
}

// ListView.builder(
//               itemCount: _list.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   height: 150,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [Colors.purple.shade50,Colors.purple.shade100,Colors.purple.shade200,Colors.purple.shade400]
//                     ),
//                     borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),bottomLeft: Radius.circular(30.0))
//                   ),
//                   child: Center(
//                     child: Text(
//                       "${index + 1}",
//                       style: TextStyle(fontFamily: String.fromCharCode(2),fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),
//                     ),
//                   ),
//                 );
//               },
//             )