import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class ShoppingCartScreen03 extends StatefulWidget {
  ShoppingCartScreen03({Key? key}) : super(key: key);

  @override
  _ShoppingCartScreen03State createState() => _ShoppingCartScreen03State();
}

class _ShoppingCartScreen03State extends State<ShoppingCartScreen03> {
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
          title: Text("Address", style: TextStyle(color: Colors.black)),
          titleSpacing: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: constraints.maxWidth,
                    padding: EdgeInsets.all(8.0),
                    color: Colors.grey.shade200,
                    child: Text("Personal Infomation"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none, hintText: 'Firstname'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none, hintText: 'Lastname'),
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth,
                    padding: EdgeInsets.all(8.0),
                    color: Colors.grey.shade200,
                    child: Text("Shipping Infomation"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none, hintText: 'Address Line 1'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none, hintText: 'Address Line 2'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none, hintText: 'City'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none, hintText: 'Postel Code'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none, hintText: 'Phone Number'),
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth,
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text("Checkout"),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
