import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dismissibless extends StatefulWidget{
  @override
  State<Dismissibless> createState() => _DismissibleState();
}

List<String> mList = ['Apple','Orange','Mango','Banana','Pineapple','Coconet','Waterlemon','Strawberries','Kiwi','Papaya','Dragonrfruit','grape'];
void lafts(){

}
rights(){

}

class _DismissibleState extends State<Dismissibless> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        color: Color(0xffE4b5cb),
        child: ListView.builder(
          itemCount: mList.length,
            itemBuilder: (context,index){
              return Dismissible(
                key: Key(mList[index]),
                onDismissed: (DismissDirection direction){
                  direction == DismissDirection.startToEnd ? lafts() : rights();
                  setState(() {
                    mList.removeAt(index);
                  });
                },
                background: Container(
                  color: Colors.greenAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 15.0),
                      Icon(Icons.offline_bolt,color: Colors.white),
                      Padding(padding: EdgeInsets.all(10.0)),
                      Text("Completed",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                    ],
                  ),
                ),
                secondaryBackground: Container(
                  color: Colors.redAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Completed",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      Padding(padding: EdgeInsets.all(10.0)),
                      Icon(Icons.delete_outline,color: Colors.white),
                      SizedBox(width: 15.0),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xff722ae6).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Center(
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text("${mList[index]}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22,color: Colors.black)),
                        ),
                        leading: ClipRRect(borderRadius: BorderRadius.circular(10.0),
                            clipBehavior: Clip.antiAlias,
                            child: Container(
                                width: 50,
                                height: 50,
                                color: Color(0xff9ab5e1),
                                child: Icon(Icons.food_bank_rounded,color: Colors.white,)
                            )
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    ));
  }
}