import 'package:flutter/material.dart';


class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 90,
      width: 90,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.pink, width: 4),
          image:   DecorationImage(image: AssetImage("assets/images/i.jpeg"))
      ),
    );
  }
}


