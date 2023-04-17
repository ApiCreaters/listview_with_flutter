import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'TabBarWidget.dart';
import 'list/Dismissible.dart';
import 'list/DraggablescrollableSheet.dart';
import 'list/Expansion Tile.dart';
import 'list/Listandgrid.dart';
import 'list/PageView.dart';
import 'list/ReorderableListView.dart';
import 'list/Sliders.dart';
import 'list/SliverAppbar.dart';
import 'list/listWheelScrollview.dart';
import 'list/seprators.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
//PageView, Slider Search, Draggable scrolSheet, Sliver Appbar, Expansion Tiles, WheelScroll, Reorderable list, Dismissi bless, Separated, List & Grid

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) => TabBarWidget(
    title: 'Utility Methods',
    tabs: const [
      Tab(icon: Icon(Icons.slideshow_rounded),text: 'PageView',height: 80),
      Tab(icon: Icon(Icons.pageview),text: 'Slider\nSearch',height: 80,),
      Tab(icon: Icon(Icons.line_style),text: 'Draggable\nscrolSheet',height: 80.0),
      Tab(icon: Icon(Icons.list_alt),text: 'Sliver\nAppbar',height: 80.0),
      Tab(icon: Icon(Icons.menu_open),text: 'Expansion\nTiles',height: 80.0),
      Tab(icon: Icon(Icons.filter_list),text: 'WheelScroll',height: 80.0),
      Tab(icon: Icon(Icons.checklist_rtl_outlined),text: 'Reorderable\nlist',height: 80.0),
      Tab(icon: Icon(Icons.view_list_rounded),text: 'Dismissi\nbless',height: 80.0),
      Tab(icon: Icon(Icons.list),text: 'Separated',height: 80.0),
      Tab(icon: Icon(Icons.grid_view),text: 'List & Grid',height: 80.0),
    ],
    children: [
      PageViews(),
      Sliders(),
      // DraggablescrolSheet(),
      // SliverAppbar(),
      // ExpansionTiles(),
      // ListwheelScrollview(),
      // Reorderablelist(),
      // Dismissibless(),
      // Seprators(),
      // ListAndGrid(),
    ],
  );

}