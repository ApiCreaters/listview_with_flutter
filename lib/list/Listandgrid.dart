
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListAndGrid extends StatefulWidget{
  @override
  State<ListAndGrid> createState() => _ListAndGridState();
}

class _ListAndGridState extends State<ListAndGrid> {

  color1(){
    return LinearGradient(
      colors: [Color(0xffc797eb),Color(0xfff0ecfc)],
      begin: Alignment.centerRight,
      end: Alignment.centerLeft
    );
  }
  color2(){
    return LinearGradient(
        colors: [Color(0xffc797eb),Color(0xfff0ecfc)],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: ListView.builder(itemBuilder: (context,index){
                  LinearGradient colors = index.isOdd ? color1() : color2();
                  return Padding(
                    padding: const EdgeInsets.only(top: 12,bottom: 12),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        gradient: colors
                      ),
                      width: double.infinity,
                      height: 80,
                      child: Center(child: Text("Item ${index+1}" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.white))),
                    ),
                  );
                },itemCount: 20),
              ),
              SizedBox(height: 25),
              Flexible(flex: 1,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      maxCrossAxisExtent: 100
                    ),
                    itemBuilder: (context,index){
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          color: Colors.deepPurpleAccent.shade100,
                          child: Center(child: Text("Item ${index+1}" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white))),
                        ),
                      );
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}