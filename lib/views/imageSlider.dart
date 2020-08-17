import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_image/model/imageModel.dart';
import 'package:provider_image/views/imageItem.dart';

class ImageSliders extends StatelessWidget {

  PageController _controller = PageController();

  List<Widget> _images = [
    ImageItems(
      image: "assets/images/man1.png",
    ),
    ImageItems(
      image: "assets/images/man2.png",
    ),
    ImageItems(
      image: "assets/images/man3.png",
    )
  ];

  @override
  Widget build(BuildContext context) {
    final imageModel = Provider.of<ImageModel>(context, listen: false);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            onPageChanged: (value) {
              imageModel.imageSlider(value);
            },
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemCount: _images.length,
            itemBuilder: (context, int index){
              return Consumer<ImageModel>(
                builder: (context, mImage, child) => _images[mImage.getImageSlider],
              );
            },
          )
        ],
      ),
    );
  }
}
