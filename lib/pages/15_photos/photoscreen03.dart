import 'package:flutter/material.dart';

import 'package:photo_view/photo_view.dart';

class PhotoScreen03 extends StatefulWidget {
  const PhotoScreen03({super.key});

  @override
  State<PhotoScreen03> createState() => _PhotoScreen03State();
}

class _PhotoScreen03State extends State<PhotoScreen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photos"),
      ),
      body: PhotoView(
        imageProvider: const AssetImage("assets/images/placeholder.png"),
        enableRotation: true,
      ),
    );
  }
}
