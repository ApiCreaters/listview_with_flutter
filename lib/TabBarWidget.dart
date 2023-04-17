import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget{
  final String title;
  final List<Tab> tabs;
  final List<Widget> children;


  const TabBarWidget({
    Key? key,
    required this.title,
    required this.tabs,
    required this.children
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffa88beb),Color(0xfff8ceec)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight
              )
            ),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 10,
            tabs: tabs,
          ),
          elevation: 20,
          titleSpacing: 20,
        ),
        body: TabBarView(children: children),
      )
  );

}