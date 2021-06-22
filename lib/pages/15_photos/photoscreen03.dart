import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_view/photo_view.dart';

class PhotoScreen03 extends StatefulWidget {
  PhotoScreen03({Key? key}) : super(key: key);

  @override
  _PhotoScreen03State createState() => _PhotoScreen03State();
}

class _PhotoScreen03State extends State<PhotoScreen03> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // transparent status bar
        systemNavigationBarColor: Colors.black, // navigation bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness: Brightness.dark, //navigation bar icons' color
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Photos", style: TextStyle(color: Colors.black)),
          titleSpacing: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: PhotoView(
          imageProvider: AssetImage("assets/images/placeholder.png"),
          enableRotation: true,
        ),
      ),
    );
  }
}
