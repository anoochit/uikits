import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uikits2/pages/12_store/sample_data.dart';

class StoreScreen04 extends StatefulWidget {
  const StoreScreen04({super.key});

  @override
  State<StoreScreen04> createState() => _StoreScreen04State();
}

class _StoreScreen04State extends State<StoreScreen04> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: SizedBox(
                            width: (constraints.maxWidth > 412)
                                ? 500
                                : constraints.maxWidth,
                            height: (constraints.maxWidth > 412)
                                ? 500
                                : constraints.maxWidth,
                            child: CarouselSlider(
                              items: productItem.productImage
                                  .map((item) =>
                                      Image.asset(item, fit: BoxFit.cover))
                                  .toList(),
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
                        ),
                        Positioned(
                          bottom: 8,
                          right: 8,
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                                '${_current + 1}/${productItem.productImage.length}'),
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        productItem.name,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        '\$${productItem.salePrice}',
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        '\$${productItem.price}',
                        style: const TextStyle(
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        productItem.description,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 80)
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                    width: constraints.maxWidth,
                    padding: const EdgeInsets.all(8.0),
                    color: Theme.of(context).primaryColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child: Column(
                            children: const [
                              Icon(
                                Icons.chat_bubble_outline,
                                color: Colors.white,
                              ),
                              Text(
                                "Chat",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            // add chat function here
                            log('chat');
                          },
                        ),
                        InkWell(
                          child: Column(
                            children: const [
                              Icon(
                                Icons.add_shopping_cart,
                                color: Colors.white,
                              ),
                              Text(
                                "Add to Cart",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            // add to cart function here
                            log('add to cart');
                          },
                        ),
                        InkWell(
                          child: Column(
                            children: const [
                              Icon(
                                Icons.money,
                                color: Colors.white,
                              ),
                              Text(
                                "Buy Now",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            // add buy now function here
                            log('buy now');
                          },
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
