import 'package:flutter/material.dart';
import 'package:uikits2/pages/13_shoppingcart/sample_data.dart';

class ShoppingCartScreen01 extends StatefulWidget {
  const ShoppingCartScreen01({super.key});

  @override
  State<ShoppingCartScreen01> createState() => _ShoppingCartScreen01State();
}

class _ShoppingCartScreen01State extends State<ShoppingCartScreen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: constraints.maxWidth,
              padding: const EdgeInsets.all(8.0),
              color: Colors.grey.shade200,
              child: const Text("Your Cart"),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: listshoppingCartItem.length,
              itemBuilder: (context, index) {
                return shoppingCartItem(
                    items: listshoppingCartItem, index: index);
              },
            ),
            Container(
              width: constraints.maxWidth,
              padding: const EdgeInsets.all(8.0),
              color: Colors.grey.shade200,
              child: const Text("Note"),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: 'Enter your note here'),
                maxLines: 3,
              ),
            ),
            Container(
              width: constraints.maxWidth,
              padding: const EdgeInsets.all(8.0),
              color: Colors.grey.shade200,
              child: const Text("Price"),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text("Shippping"),
                  Spacer(),
                  Text("Free"),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text("Total"),
                  const Spacer(),
                  Text('${getTotal(items: listshoppingCartItem)}'),
                ],
              ),
            ),
            Container(
                width: constraints.maxWidth,
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text("Checkout"),
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
        padding: const EdgeInsets.only(bottom: 4),
        child: Row(
          children: [
            SizedBox(
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
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    productItem[0].name,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Text('\$${items[index].total}'),
                ),
              ],
            ),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.close))
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
    for (var element in items) {
      total = total + element.total;
    }
    return total;
  }
}
