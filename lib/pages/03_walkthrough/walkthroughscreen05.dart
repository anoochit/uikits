import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WalkthroughScreen05 extends StatefulWidget {
  WalkthroughScreen05({Key? key}) : super(key: key);

  @override
  _WalkthroughScreen05State createState() => _WalkthroughScreen05State();
}

class _WalkthroughScreen05State extends State<WalkthroughScreen05> {
  // list carousel
  List<Widget> listCarousel(BuildContext context) {
    return [
      CarouselPage(
          image:
              Image.asset('assets/images/placeholder.png', fit: BoxFit.cover),
          title: "Instruction Page 1",
          subtitle: "Instruction 1 Description"),
      CarouselPage(
          image:
              Image.asset('assets/images/placeholder.png', fit: BoxFit.cover),
          title: "Instruction Page 2",
          subtitle: "Instruction 2 Description"),
      CarouselPage(
          image:
              Image.asset('assets/images/placeholder.png', fit: BoxFit.cover),
          title: "Instruction Page 3",
          subtitle: "Instruction 3 Description"),
      CarouselPage(
          image:
              Image.asset('assets/images/placeholder.png', fit: BoxFit.cover),
          title: "Instruction Page 4",
          subtitle: "Instruction 4 Description"),
    ];
  }

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    var listCarouselPage = listCarousel(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            Positioned(
              top: 64,
              child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                child: CarouselSlider(
                  items: listCarouselPage,
                  options: CarouselOptions(
                    height: constraints.maxHeight,
                    viewportFraction: 1.0,
                    //enlargeCenterPage: true,
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
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 120.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: listCarouselPage.map((item) {
                  int index = listCarouselPage.indexOf(item);
                  return Container(
                    width: _current == index ? 12.0 : 8.0,
                    height: _current == index ? 12.0 : 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? Colors.grey : Colors.grey[300],
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(32.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                      (constraints.maxWidth > 412)
                          ? (constraints.maxWidth * 0.5)
                          : constraints.maxWidth,
                      50),
                ),
                child: Text("Continue"),
                onPressed: () {
                  // place sign up function here
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CarouselPage extends StatelessWidget {
  const CarouselPage({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final Image image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          Container(
              width: (constraints.maxWidth > 412)
                  ? (constraints.maxWidth * 0.8)
                  : constraints.maxWidth,
              height: (constraints.maxWidth > 412)
                  ? (constraints.maxWidth * 0.5)
                  : constraints.maxWidth,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: image,
              )),
          Container(
            width: (constraints.maxWidth > 412)
                ? (constraints.maxWidth * 0.8)
                : constraints.maxWidth,
            height: constraints.maxHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.2,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(subtitle),
              ],
            ),
          )
        ],
      ),
    );
  }
}
