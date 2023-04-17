import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverAppbar extends StatefulWidget {
  @override
  State<SliverAppbar> createState() => _SliverAppbarState();
}

class _SliverAppbarState extends State<SliverAppbar> {
  final List<int> _list = List<int>.generate(20, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            floating: true,
            backgroundColor: Colors.deepPurple,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Sliver App Bar',style: TextStyle(color: Colors.white),),
              background: Text("Data",style: TextStyle(color: Colors.white54,fontSize: 32,fontWeight: FontWeight.w500),),   // floating: true,
              collapseMode: CollapseMode.parallax,
              centerTitle: true,
              stretchModes: [StretchMode.fadeTitle],
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: _list.map((e) => Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child:  Center(child: Text("${e +1}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                ),
              )).toList()
            ),
          )
        ],
      ),
    );
  }
}
