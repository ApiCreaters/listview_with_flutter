import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Seprators extends StatefulWidget{
  @override
  State<Seprators> createState() => _SepratorsState();
}

class _SepratorsState extends State<Seprators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfac587e2),
      body: SafeArea(
        child: Container(
          child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                title: Center(child: Text("Item ${index + 1}",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
              ),
              separatorBuilder: (context, index1){
                if (index1 % 5 == 0) {
                  return Container(
                    color: Color(0xaf9170e9),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "ListView Separator  $index1",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ),
                    ),
                  );
                }
                return Divider(
                  thickness: 1.5,
                  endIndent: 20,
                  indent: 20,
                  color: Color(0xff93b8dc),
                );
              },
              itemCount: 40),
        ),
      ),
    );
  }
}