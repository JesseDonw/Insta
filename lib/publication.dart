import 'package:flutter/material.dart';

class Publication extends StatelessWidget {
  final String path;
  const Publication({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:75,
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.pink, width: 4),
                        image:   DecorationImage(image: AssetImage("assets/images/i.jpeg"))
                    ),
                  ),
                  Text("Tom"),
                ],
                ),
                Icon(Icons.password)
              ],
            ) ,
          ),
        ),
        Container(
          child: Image.asset(path),
        ),
        SizedBox(height:50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              SizedBox(width:150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.favorite),
                    Icon(Icons.message),
                    Icon(Icons.send),
                  ],
                ),
              ),
              Icon(Icons.bookmark_border),
            ],
          ),
        )
      ],
    );
  }
}
