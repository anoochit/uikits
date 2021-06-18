import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WalkthroughScreen03 extends StatefulWidget {
  WalkthroughScreen03({Key? key}) : super(key: key);

  @override
  _WalkthroughScreen03State createState() => _WalkthroughScreen03State();
}

class _WalkthroughScreen03State extends State<WalkthroughScreen03> {
  // list carousel
  List<Widget> listCarousel(BuildContext context) {
    return [
      CarouselPage(image: Image.asset('assets/images/placeholder.png', fit: BoxFit.cover), title: "Instruction Page 1", subtitle: "Instruction 1 Description"),
      CarouselPage(image: Image.asset('assets/images/placeholder.png', fit: BoxFit.cover), title: "Instruction Page 2", subtitle: "Instruction 2 Description"),
      CarouselPage(image: Image.asset('assets/images/placeholder.png', fit: BoxFit.cover), title: "Instruction Page 3", subtitle: "Instruction 3 Description"),
      CarouselPage(image: Image.asset('assets/images/placeholder.png', fit: BoxFit.cover), title: "Instruction Page 4", subtitle: "Instruction 4 Description"),
    ];
  }

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    var listCarouselPage = listCarousel(context);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // transparent status bar
        systemNavigationBarColor: Colors.black, // navigation bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness: Brightness.dark, //navigation bar icons' color
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(
          builder: (context, constraints) => Stack(
            children: [
              Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                child: CarouselSlider(
                  items: listCarouselPage,
                  options: CarouselOptions(
                    height: constraints.maxHeight * 0.6,
                    viewportFraction: 0.8,
                    enlargeCenterPage: true,
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
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: listCarouselPage.map((item) {
                    int index = listCarouselPage.indexOf(item);
                    return Container(
                      width: _current == index ? 12.0 : 8.0,
                      height: _current == index ? 12.0 : 8.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index ? Colors.grey : Colors.grey[300],
                      ),
                    );
                  }).toList(),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(bottom: 24.0, right: 16.0),
                child: TextButton(
                  child: Text("Skip"),
                  onPressed: () {
                    // place skip function
                  },
                ),
              )
            ],
          ),
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
          Container(width: constraints.maxWidth, height: constraints.maxHeight * 0.6, child: image),
          Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.35,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 32.0),
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
