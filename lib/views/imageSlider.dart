import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_image/model/imageModel.dart';
import 'package:provider_image/views/imageItem.dart';

class ImageSliders extends StatelessWidget {
  final PageController _controller = PageController();

  final List<Widget> _images = [
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
    void _nextImage() {
      imageModel.nextImage();
    }

    void _prevImage() {
      imageModel.prevImage();
    }

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.2,
            child: PageView.builder(
              onPageChanged: (value) {
                imageModel.imageSlider(value);
              },
              scrollDirection: Axis.horizontal,
              controller: _controller,
              itemCount: _images.length,
              itemBuilder: (context, int index) {
                return Consumer<ImageModel>(
                  builder: (context, mImage, child) =>
                      _images[mImage.getImageSlider],
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  onPressed: _prevImage,
                  child: Text('Prev'),
                ),
                FlatButton(
                  onPressed: _nextImage,
                  child: Text('Next'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
