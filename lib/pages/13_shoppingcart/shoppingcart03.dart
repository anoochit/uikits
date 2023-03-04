import 'package:flutter/material.dart';

class ShoppingCartScreen03 extends StatefulWidget {
  ShoppingCartScreen03({Key? key}) : super(key: key);

  @override
  _ShoppingCartScreen03State createState() => _ShoppingCartScreen03State();
}

class _ShoppingCartScreen03State extends State<ShoppingCartScreen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Address"),
      ),
      body: LayoutBuilder(
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
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Firstname'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Lastname'),
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
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Address Line 1'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Address Line 2'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'City'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Postel Code'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Phone Number'),
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
    );
  }
}
