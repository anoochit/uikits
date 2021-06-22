import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PhotoScreen02 extends StatefulWidget {
  PhotoScreen02({Key? key}) : super(key: key);

  @override
  _PhotoScreen02State createState() => _PhotoScreen02State();
}

class _PhotoScreen02State extends State<PhotoScreen02> {
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
              Container(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 38,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(FontAwesomeIcons.search, size: 20),
                      border: InputBorder.none,
                    ),
                    onFieldSubmitted: (value) {
                      // place submit function here
                    },
                  ),
                ),
              ),
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
