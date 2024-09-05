import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ms_undraw/ms_undraw.dart';

class WalkthroughScreen01 extends StatefulWidget {
  const WalkthroughScreen01({super.key});

  @override
  State<WalkthroughScreen01> createState() => _WalkthroughScreen01State();
}

class _WalkthroughScreen01State extends State<WalkthroughScreen01> {
  // list carousel
  List<Widget> listCarousel(BuildContext context) {
    return [
      CarouselPage(
        image: UnDraw(
          illustration: UnDrawIllustration.mobile,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      CarouselPage(
        image: UnDraw(
          illustration: UnDrawIllustration.mobile_analytics,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      CarouselPage(
        image: UnDraw(
          illustration: UnDrawIllustration.mobile_application,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      CarouselPage(
        image: UnDraw(
          illustration: UnDrawIllustration.mobile_browsers,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    ];
  }

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    var listCarouselPage = listCarousel(context);

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            CarouselSlider(
              items: listCarouselPage,
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
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: listCarouselPage.map((item) {
                  int index = listCarouselPage.indexOf(item);
                  return Icon(
                    Icons.circle,
                    size: _current == index ? 16 : 12,
                    color: _current == index
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.inversePrimary,
                  );
                }).toList(),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.only(
                bottom: 24.0,
                right: 16.0,
              ),
              child: TextButton(
                child: const Text("Skip"),
                onPressed: () {
                  // TODO : place skip function
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CarouselPage extends StatelessWidget {
  const CarouselPage({
    super.key,
    required this.image,
  });

  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 16.0,
      ),
      child: image,
    );
  }
}
