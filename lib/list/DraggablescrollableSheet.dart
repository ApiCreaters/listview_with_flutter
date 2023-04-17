import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraggablescrolSheet extends StatefulWidget {
  @override
  State<DraggablescrolSheet> createState() => _DraggablescrolSheetState();
}

class _DraggablescrolSheetState extends State<DraggablescrolSheet> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurpleAccent.shade100,
        child: DraggableScrollableSheet(
          initialChildSize: 0.5,
          maxChildSize: 0.8,
          minChildSize: 0.09,
          builder: (context, scrollController) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.white70,
                child: ListView.builder(
                  controller: scrollController,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Player ${index + 1}'),
                    );
                  },
                  itemCount: 40,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
