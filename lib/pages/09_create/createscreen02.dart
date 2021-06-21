import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:timeago/timeago.dart' as timeago;

class CreateScreen02 extends StatefulWidget {
  CreateScreen02({Key? key}) : super(key: key);

  @override
  _CreateScreen02State createState() => _CreateScreen02State();
}

class _CreateScreen02State extends State<CreateScreen02> {
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
          title: Text("Create", style: TextStyle(color: Colors.black)),
          titleSpacing: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.save_outlined),
              onPressed: () {
                // place save function here
              },
            )
          ],
        ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'To',
                        ),
                        onFieldSubmitted: (value) {
                          // place submit function here
                        },
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Subject',
                        ),
                        onFieldSubmitted: (value) {
                          // place submit function here
                        },
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Message',
                        ),
                        maxLines: 10,
                        onFieldSubmitted: (value) {
                          // place submit function here
                        },
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        width: constraints.maxWidth,
                        color: Colors.white.withOpacity(0.8),
                        child: ElevatedButton(
                          child: Text("Publish"),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
