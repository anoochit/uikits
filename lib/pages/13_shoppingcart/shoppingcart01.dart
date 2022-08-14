import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:uikits2/pages/13_shoppingcart/sample_data.dart';

class ShoppingCartScreen01 extends StatefulWidget {
  ShoppingCartScreen01({Key? key}) : super(key: key);

  @override
  _ShoppingCartScreen01State createState() => _ShoppingCartScreen01State();
}

class _ShoppingCartScreen01State extends State<ShoppingCartScreen01> {
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
          title: Text("Cart", style: TextStyle(color: Colors.black)),
          titleSpacing: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: SafeArea(
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: constraints.maxWidth,
                  padding: EdgeInsets.all(8.0),
                  color: Colors.grey.shade200,
                  child: Text("Your Cart"),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: listshoppingCartItem.length,
                  itemBuilder: (context, index) {
                    return shoppingCartItem(items: listshoppingCartItem, index: index);
                  },
                ),
                Container(
                  width: constraints.maxWidth,
                  padding: EdgeInsets.all(8.0),
                  color: Colors.grey.shade200,
                  child: Text("Note"),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(border: InputBorder.none, hintText: 'Enter your note here'),
                    maxLines: 3,
                  ),
                ),
                Container(
                  width: constraints.maxWidth,
                  padding: EdgeInsets.all(8.0),
                  color: Colors.grey.shade200,
                  child: Text("Price"),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Shippping"),
                      Spacer(),
                      Text("Free"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Total"),
                      Spacer(),
                      Text('${getTotal(items: listshoppingCartItem)}'),
                    ],
                  ),
                ),
                Container(
                    width: constraints.maxWidth,
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text("Checkout"),
                      onPressed: () {},
                    )),
              ],
            );
          }),
        ),
      ),
    );
  }

  Widget shoppingCartItem({required List<ShoppingCartItem> items, required int index}) {
    List<Product> productItem = getProductById(items[index].productId);
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        padding: EdgeInsets.only(bottom: 4),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              child: Image.asset(
                "assets/images/placeholder.png",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    productItem[0].name,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text('\$${items[index].total}'),
                ),
              ],
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.close))
          ],
        ),
      ),
    );
  }

  getProductById(int productId) {
    return listProduct.where((element) => (element.id == productId)).toList();
  }

  getTotal({required List<ShoppingCartItem> items}) {
    var total = 0.0;
    items.forEach((element) {
      total = total + element.total;
    });
    return total;
  }
}
