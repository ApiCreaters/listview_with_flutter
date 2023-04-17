import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reorderablelist extends StatefulWidget{
  @override
  State<Reorderablelist> createState() => _ReorderablelistState();
}

final List<int> _itemList = List<int>.generate(36, (index) => index);

class _ReorderablelistState extends State<Reorderablelist> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade400,
      body: SafeArea(
        child: ReorderableListView(
          children: [
            for(int index = 0; index<_itemList.length; index++)
              Container(
                color: Color(0xffc9a0dc),
                child: ListTile(
                  key: Key("${index}"),
                  title: Text("Item ${_itemList[index]}"),
                ),
              )
          ],
          onReorder: (int oldIndex ,int newIndex){
            setState(() {
            if(newIndex > oldIndex){
              newIndex -=1;
            }
            final int temp = _itemList[oldIndex];
            _itemList.removeAt(oldIndex);
            _itemList.insert(newIndex, temp);
            });
          },
        ),
      ),
    );
  }
}