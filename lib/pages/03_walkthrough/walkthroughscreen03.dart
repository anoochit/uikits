import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ms_undraw/ms_undraw.dart';

class WalkthroughScreen03 extends StatefulWidget {
  const WalkthroughScreen03({super.key});

  @override
  State<WalkthroughScreen03> createState() => _WalkthroughScreen03State();
}

class _WalkthroughScreen03State extends State<WalkthroughScreen03> {
  // list carousel
  List<Widget> listCarousel(BuildContext context) {
    return [
      CarouselPage(
        image: UnDraw(
          illustration: UnDrawIllustration.mobile,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: "Instruction Page 1",
        subtitle: "Sit Lorem reprehenderit sint veniam anim duis.",
      ),
      CarouselPage(
        image: UnDraw(
          illustration: UnDrawIllustration.mobile_analytics,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: "Instruction Page 2",
        subtitle: "Sit Lorem reprehenderit sint veniam anim duis.",
      ),
      CarouselPage(
        image: UnDraw(
          illustration: UnDrawIllustration.mobile_application,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: "Instruction Page 3",
        subtitle: "Sit Lorem reprehenderit sint veniam anim duis.",
      ),
      CarouselPage(
        image: UnDraw(
          illustration: UnDrawIllustration.mobile_browsers,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: "Instruction Page 4",
        subtitle: "Sit Lorem reprehenderit sint veniam anim duis.",
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
            SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: CarouselSlider(
                items: listCarouselPage,
                options: CarouselOptions(
                  height: constraints.maxHeight * 0.6,
                  viewportFraction: 0.9,
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
              padding: const EdgeInsets.only(bottom: 24.0, right: 16.0),
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
    required this.title,
    required this.subtitle,
  });

  final Widget image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Column(
        children: [
          SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight * 0.8,
            child: image,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(subtitle),
        ],
      ),
    );
  }
}
