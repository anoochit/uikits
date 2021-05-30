import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ms_undraw/illustrations.g.dart';
import 'package:ms_undraw/ms_undraw.dart';

class WalkthroughScreen01 extends StatefulWidget {
  WalkthroughScreen01({Key? key}) : super(key: key);

  @override
  _WalkthroughScreen01State createState() => _WalkthroughScreen01State();
}

class _WalkthroughScreen01State extends State<WalkthroughScreen01> {
  int _current = 0;

  final listImage = [
    UnDrawIllustration.a_better_world,
    UnDrawIllustration.a_day_at_the_park,
    UnDrawIllustration.a_day_off,
    UnDrawIllustration.a_moment_to_relax,
  ];

  @override
  Widget build(BuildContext context) {
    var listCarouselItem = listImage.map((item) => UnDraw(illustration: item, color: Theme.of(context).primaryColor)).toList();
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // transparent status bar
        systemNavigationBarColor: Colors.black, // navigation bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness: Brightness.dark, //navigation bar icons' color
      ),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: CarouselSlider(
                      items: listCarouselItem,
                      options: CarouselOptions(
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: listImage.map((url) {
                        int index = listImage.indexOf(url);
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
                ),
                Align(alignment: Alignment.bottomRight, child: TextButton(onPressed: () {}, child: Text("Skip"))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
