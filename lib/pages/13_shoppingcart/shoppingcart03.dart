import 'package:flutter/material.dart';

class ShoppingCartScreen03 extends StatefulWidget {
  const ShoppingCartScreen03({super.key});

  @override
  State<ShoppingCartScreen03> createState() => _ShoppingCartScreen03State();
}

class _ShoppingCartScreen03State extends State<ShoppingCartScreen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Address"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: constraints.maxWidth,
                padding: const EdgeInsets.all(8.0),
                color: Colors.grey.shade200,
                child: const Text("Personal Infomation"),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Firstname'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Lastname'),
                ),
              ),
              Container(
                width: constraints.maxWidth,
                padding: const EdgeInsets.all(8.0),
                color: Colors.grey.shade200,
                child: const Text("Shipping Infomation"),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Address Line 1'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Address Line 2'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'City'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Postel Code'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Phone Number'),
                ),
              ),
              Container(
                width: constraints.maxWidth,
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: const Text("Checkout"),
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
