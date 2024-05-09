import 'package:flutter/material.dart';
import 'package:insta/publication.dart';

import 'component/story.dart';

void main() {
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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Instagram",
      style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(onPressed: (){},
            icon: Icon(Icons.add_box_outlined, color: Colors.black)
        ),

        IconButton(onPressed: (){},
            icon: Icon(Icons.favorite_border, color: Colors.black)
        ),

        IconButton(onPressed: (){},
            icon: Icon(Icons.message, color: Colors.black)
        ),
      ],

    ),
      body: Column(
        children: [
          SizedBox(height: 120,
          child: ListView( 
            scrollDirection: Axis.horizontal,
            children: [
              Story(),
              Story(),



            ],
          ),),
          Container(
            child: Expanded(
              child: ListView.builder(
                itemCount: 3,
                  itemBuilder: (context, index){
                    return Publication(path: "assets/images/iii.jpeg",);
                  }
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled, color:Colors.black),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search, color:Colors.black),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.video_camera_back, color:Colors.black),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag, color:Colors.black),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person, color:Colors.black),label: ""),
        ],
      ),

    );
  }
}
