import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoScreen03 extends StatefulWidget {
  PhotoScreen03({Key? key}) : super(key: key);

  @override
  _PhotoScreen03State createState() => _PhotoScreen03State();
}

class _PhotoScreen03State extends State<PhotoScreen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photos"),
      ),
      body: PhotoView(
        imageProvider: AssetImage("assets/images/placeholder.png"),
        enableRotation: true,
      ),
    );
  }
}
