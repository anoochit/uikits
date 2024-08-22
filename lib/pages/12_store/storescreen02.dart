import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StoreScreen02 extends StatefulWidget {
  const StoreScreen02({super.key});

  @override
  State<StoreScreen02> createState() => _StoreScreen02State();
}

class _StoreScreen02State extends State<StoreScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Store"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // place save function here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    prefixIcon:
                        Icon(FontAwesomeIcons.magnifyingGlass, size: 20),
                    border: InputBorder.none,
                  ),
                  onFieldSubmitted: (value) {
                    // place submit function here
                  },
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const GridItem();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: GridTile(
          child: Stack(
            children: [
              SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxWidth,
                child: Image.asset(
                  'assets/images/placeholder.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 1,
                bottom: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: constraints.maxWidth,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0, vertical: 4.0),
                      child: const Text(
                        "Product Name",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0, vertical: 4.0),
                      child: const Text(
                        "Short Description",
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0, vertical: 2.0),
                      child: const Text(
                        "\$12.0",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
