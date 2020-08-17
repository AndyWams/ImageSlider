import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_image/model/imageModel.dart';
import 'package:provider_image/views/imageSlider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ImageModel(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ImageSliders(),
    );
  }
}
