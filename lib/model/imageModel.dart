import 'package:flutter/material.dart';

class ImageModel with ChangeNotifier {
  int _currentImage = 0;

  int get getImageSlider {
    return _currentImage;
  }

  void imageSlider(int index) {
    _currentImage = index;
    notifyListeners();
  }

  void prevImage() {
    _currentImage -= 1;
    if (_currentImage == 0) {
      _currentImage = 0;
    } else if (_currentImage < 0) {
      _currentImage = 2;
    }
    notifyListeners();
  }

  void nextImage() {
    _currentImage += 1;
    if (_currentImage == 0) {
      _currentImage = 0;
    } else if (_currentImage > 2) {
      _currentImage = 0;
    }
    notifyListeners();
  }
}
