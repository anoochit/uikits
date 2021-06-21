import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StoreScreen04 extends StatefulWidget {
  StoreScreen04({Key? key}) : super(key: key);

  @override
  _StoreScreen04State createState() => _StoreScreen04State();
}

class _StoreScreen04State extends State<StoreScreen04> {
  int _current = 0;

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
        // appBar: AppBar(
        //   title: Text("Product", style: TextStyle(color: Colors.black)),
        //   titleSpacing: 0,
        //   backgroundColor: Colors.white,
        //   iconTheme: IconThemeData(color: Colors.black),
        // ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: constraints.maxWidth,
                        height: constraints.maxWidth,
                        child: CarouselSlider(
                          items: productItem.productImage.map((item) => Image.asset(item, fit: BoxFit.cover)).toList(),
                          options: CarouselOptions(
                            height: constraints.maxHeight,
                            viewportFraction: 1.0,
                            scrollDirection: Axis.horizontal,
                            enableInfiniteScroll: false,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        right: 8,
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5), borderRadius: BorderRadius.circular(10)),
                          child: Text('${_current + 1}/${productItem.productImage.length}'),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      '${productItem.name}',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      '\$${productItem.price}',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      '${productItem.description}',
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

// sample data

class Product {
  final int id;
  final String name;
  final double price;
  final String description;
  final List<String> productImage;

  Product(this.id, this.name, this.price, this.description, this.productImage);
}

final productItem = Product(
    1,
    "Sample Product",
    12.0,
    "Duis aliqua eiusmod nostrud quis excepteur ea et do enim cupidatat. Aute ipsum nulla eiusmod consectetur enim adipisicing et Lorem. Eu sit minim excepteur cillum sunt labore duis. Ad irure id dolor nisi in laboris excepteur cupidatat. Dolor consequat qui elit velit. Velit exercitation consectetur irure consectetur culpa cillum magna commodo.\n\nEx consequat ea dolor quis adipisicing nostrud. Proident eiusmod id eu reprehenderit anim non fugiat aliquip adipisicing. Nulla aliquip ipsum labore sit consectetur. Laborum consequat quis minim ex exercitation non id consequat anim id Lorem. Culpa reprehenderit ut aute ex sit exercitation amet pariatur do consectetur exercitation fugiat occaecat. Quis deserunt ea velit reprehenderit ex incididunt adipisicing. Labore magna culpa mollit proident id sint laboris irure mollit id anim laborum quis enim.\n\nTempor consectetur duis fugiat eiusmod duis. Aute minim do velit id do pariatur. Aliqua Lorem cillum in ipsum cupidatat excepteur labore dolore reprehenderit. Culpa exercitation veniam qui magna ipsum aute ex irure ipsum non eiusmod ipsum. Adipisicing qui quis deserunt commodo aliquip.\n\nDuis aliqua eiusmod nostrud quis excepteur ea et do enim cupidatat. Aute ipsum nulla eiusmod consectetur enim adipisicing et Lorem. Eu sit minim excepteur cillum sunt labore duis. Ad irure id dolor nisi in laboris excepteur cupidatat. Dolor consequat qui elit velit. Velit exercitation consectetur irure consectetur culpa cillum magna commodo.",
    [
      "assets/images/placeholder.png",
      "assets/images/placeholder.png",
      "assets/images/placeholder.png",
      "assets/images/placeholder.png",
      "assets/images/placeholder.png",
      "assets/images/placeholder.png",
      "assets/images/placeholder.png",
      "assets/images/placeholder.png"
    ]);
