import 'package:flutter/material.dart';

class StoreScreen03 extends StatefulWidget {
  StoreScreen03({Key? key}) : super(key: key);

  @override
  _StoreScreen03State createState() => _StoreScreen03State();
}

class _StoreScreen03State extends State<StoreScreen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Store"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // place save function here
            },
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (constraints.maxWidth > 412) ? 4 : 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return GridItem();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        child: Stack(
          children: [
            Container(
              width: constraints.maxWidth,
              height: constraints.maxWidth,
              child: Image.asset(
                'assets/images/placeholder.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 4,
              width: constraints.maxWidth,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "\$12.00",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "Product Name",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "Short Description",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
