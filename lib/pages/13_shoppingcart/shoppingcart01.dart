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
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, constraints) {
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
                      border: InputBorder.none,
                      hintText: 'Enter your note here'),
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
                child: const ListTile(
                  title: Text("Shippping"),
                  trailing: Text("Free"),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: const Text("Total"),
                  trailing: Text('${getTotal(items: listshoppingCartItem)}'),
                ),
              ),
              Container(
                  width: constraints.maxWidth,
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                    child: const Text("Checkout"),
                    onPressed: () {},
                  )),
            ],
          );
        }),
      ),
    );
  }

  Widget shoppingCartItem(
      {required List<ShoppingCartItem> items, required int index}) {
    List<Product> productItem = getProductById(items[index].productId);
    return LayoutBuilder(
      builder: (context, constraints) => ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage(
            "assets/images/placeholder.png",
          ),
        ),
        title: Text(
          productItem[0].name,
        ),
        subtitle: Text('\$${items[index].total}'),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
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
