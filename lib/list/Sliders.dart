import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Sliders extends StatefulWidget{
  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  //  Sliders
  List listss  = [
    {"id":1,"images": 'assets/imasds.jpg'},
    {"id":2,"images": 'assets/imatemsss.jpg'},
    {"id":3,"images": 'assets/imatempima.jpg'},
    {"id":4,"images": 'assets/images.jpg'}
  ];
  final CarouselController carouselController = CarouselController();
  int index = 0;



  //Search
  final List<Map<String,dynamic>> _allUsers =[
    {"id": "1","name": "Dr. Manu Kumar"},{"id": "2","name": "Dr. Raj Singh"},{"id": "3","name": "Dr. Mukesh Ambani"},{"id": "4","name": "RamNath Govind"},{"id": "5","name": "Avi Vaishnav"},{"id": "6","name": "M.S. Dhoni"},{"id": "7","name": "Arijit Singh"},
  ];

  List<Map<String,dynamic>> _foundUsers = [];

  @override
  void initState() {
    super.initState();
    _foundUsers = _allUsers;
  }

  void _runFilter(String enteredkeyword){
    List<Map<String,dynamic>> results = [];
    if(enteredkeyword.isEmpty){
      results = _allUsers;
    } else {
      results = _allUsers.where(
          (user) => user["name"].toLowerCase().contains(enteredkeyword.toLowerCase())
      ).toList();
      setState(() {
        _foundUsers = results;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffce99ea),
      body: Column(
        children: [
          SizedBox(height: 5),
          Stack(
            children: [
              InkResponse(
                onTap: (){},
                child: CarouselSlider(
                  items : listss.map((item) =>  Image.asset(item['images'],
                    fit: BoxFit.cover,width: 1000
                  )).toList(),
                  carouselController : carouselController,
                  options: CarouselOptions(
                    scrollPhysics: BouncingScrollPhysics(),
                    autoPlay: true,
                    enlargeCenterPage: true,

                    aspectRatio: 2.5,
                    onPageChanged: (indexs,reason){
                      setState(() {
                        index = indexs;
                      });
                    },
                  )
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: listss.asMap().entries.map((entry){
                      print(entry);
                      print(entry.key);
                      return GestureDetector(
                        onTap: (){carouselController.animateToPage(entry.key);},
                        child: Container(
                          width: index == entry.key ? 17:7,
                          height: 7.0,
                          margin: EdgeInsets.symmetric(horizontal: 3.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: index == entry.key ? Colors.red:Colors.tealAccent
                          ),
                        ),
                      );
                    }).toList(),
                  )
              )
            ],
          ),
          SizedBox(height: 40.0),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) => _runFilter(value),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 5.0),
                      hintText: "Searching...",
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(width: 2,color: Colors.black)
                      )
                    ),
                  ),
                  const SizedBox(height: 15),
                  Flexible(
                    child: _foundUsers.isNotEmpty ?
                    ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context,index) => Card(
                        color: Colors.greenAccent.shade100,
                        elevation: 4,
                        margin: EdgeInsets.symmetric(vertical: 5.0),
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundColor: Colors.lightGreen,
                              child: Text(_foundUsers[index]["id"]),
                            ),
                          ),
                          title: Text(_foundUsers[index]["name"]),
                        ),
                      ),
                    ) : const Text("No Results")
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}