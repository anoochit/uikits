import 'package:flutter/material.dart';
import 'package:uikits2/pages/13_shoppingcart/sample_data.dart';

class ShoppingCartScreen02 extends StatefulWidget {
  const ShoppingCartScreen02({super.key});

  @override
  State<ShoppingCartScreen02> createState() => _ShoppingCartScreen02State();
}

class _ShoppingCartScreen02State extends State<ShoppingCartScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Cart"),
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
                child: FilledButton(
                  child: const Text("Checkout"),
                  onPressed: () {},
                ),
              ),
            ],
          );
        }),
      ),
    );
  }

  Widget shoppingCartItem(
      {required List<ShoppingCartItem> items, required int index}) {
    List<Product> productItem = getProductById(items[index].productId);
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage("assets/images/placeholder.png"),
      ),
      title: Text(
        productItem[0].name,
      ),
      subtitle: Text('\$${items[index].total}'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove),
          ),
          Text(
            '${items[index].amount}',
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ],
      ),
    );
    // return LayoutBuilder(
    //   builder: (context, constraints) => Row(
    //     children: [
    //       SizedBox(
    //         width: 80,
    //         height: 80,
    //         child: Image.asset(
    //           "assets/images/placeholder.png",
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Container(
    //             width: constraints.maxWidth - 200,
    //             padding: const EdgeInsets.all(8),
    //             child: Text(
    //               productItem[0].name,
    //               style: const TextStyle(fontWeight: FontWeight.w500),
    //             ),
    //           ),
    //           Container(
    //             padding: const EdgeInsets.all(8),
    //             child: Text('\$${items[index].total}'),
    //           ),
    //         ],
    //       ),
    //       const Spacer(),
    //       IconButton(
    //         onPressed: () {},
    //         icon: const Icon(Icons.remove),
    //       ),
    //       Text(
    //         '${items[index].amount}',
    //       ),
    //       IconButton(
    //         onPressed: () {},
    //         icon: const Icon(Icons.add),
    //       )
    //     ],
    //   ),
    // );
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
