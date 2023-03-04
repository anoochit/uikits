import 'package:flutter/material.dart';
import 'package:uikits2/pages/13_shoppingcart/sample_data.dart';

class ShoppingCartScreen02 extends StatefulWidget {
  ShoppingCartScreen02({Key? key}) : super(key: key);

  @override
  _ShoppingCartScreen02State createState() => _ShoppingCartScreen02State();
}

class _ShoppingCartScreen02State extends State<ShoppingCartScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
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
                return shoppingCartItem(
                    items: listshoppingCartItem, index: index);
              },
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
              color: Colors.grey.shade200,
              child: Text("Note"),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter your note here'),
                maxLines: 3,
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
    );
  }

  Widget shoppingCartItem(
      {required List<ShoppingCartItem> items, required int index}) {
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
                  width: constraints.maxWidth - 200,
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
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove),
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(60)),
              child: Text(
                '${items[index].amount}',
                style: TextStyle(color: Colors.white),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            )
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
