import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpansionTiles extends StatefulWidget{
  @override
  State<ExpansionTiles> createState() => _ExpansionTilesState();
}

class _ExpansionTilesState extends State<ExpansionTiles> {
  //Expansion Tile
  List<String> month = ['January','February','March','April','May','June','July','August','September','October','November','December'];
  List<String> countries = ['Us','India','Rusia','Japan','Chain','Australia','United States','Afghanistan','Frace','United Kingdom','Argentina'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: countries.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index){
            return Card(
              color: Colors.deepPurple.shade400,
              elevation: 7,
              shadowColor: Colors.pink,
              child: ExpansionTile(
                title: Text(countries[index].toString(),
                  style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),
                ),
                children: [
                  Container(
                    height: 160,
                    child: ListView.builder(
                        itemBuilder: (context,indexs){
                          return GestureDetector(
                            onTap: (){
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("${month[indexs].toString()} Book a Flight"),
                                duration: Duration(seconds: 3),
                                action: SnackBarAction(label: 'Done',onPressed: (){},textColor: Colors.tealAccent,),
                                backgroundColor: Colors.deepPurple.shade200,
                                elevation: 10,
                                behavior: SnackBarBehavior.fixed,
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
                                    borderSide: BorderSide(color: Colors.deepPurple)
                                ),
                              )
                              );
                            },
                            child: Container(
                              color: Colors.deepPurple.shade300,
                              child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                child: Text(month[indexs].toString(),
                                  style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
                              ),
                            ),
                          );
                        },
                      itemCount: month.length,

                    ),
                  )
                ],
              ),
            );
          }
      )
    );
  }
}


//ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                     content: Text(month[index].toString()),
//                     duration: Duration(seconds: 3),
//                     action: SnackBarAction(label: 'Done',onPressed: (){},textColor: Colors.tealAccent),
//                     backgroundColor: Colors.deepPurple.shade200,
//                     elevation: 10,
//                     behavior: SnackBarBehavior.fixed,
//                   shape: OutlineInputBorder(
//                     borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
//                     borderSide: BorderSide(color: Colors.deepPurple)
//                   ),
//                   )
//                 )