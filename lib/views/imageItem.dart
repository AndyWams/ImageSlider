import 'package:flutter/material.dart';

class ImageItems extends StatelessWidget {
  final String image;
  ImageItems({this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
              child: Image.asset(image),
          )
        ],
      ),
    );
  }
}
