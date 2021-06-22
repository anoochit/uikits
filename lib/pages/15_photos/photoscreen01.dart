import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhotoScreen01 extends StatefulWidget {
  PhotoScreen01({Key? key}) : super(key: key);

  @override
  _PhotoScreen01State createState() => _PhotoScreen01State();
}

class _PhotoScreen01State extends State<PhotoScreen01> {
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
        body: LayoutBuilder(
          builder: (context, constraints) => Column(
            children: [
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                    ),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Image.asset('assets/images/placeholder.png', fit: BoxFit.cover),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
