import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ms_undraw/ms_undraw.dart';

class WalkthroughScreen04 extends StatefulWidget {
  const WalkthroughScreen04({super.key});

  @override
  State<WalkthroughScreen04> createState() => _WalkthroughScreen04State();
}

class _WalkthroughScreen04State extends State<WalkthroughScreen04> {
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
        builder: (context, constraints) => Column(
          children: [
            Expanded(
              child: CarouselSlider(
                items: listCarouselPage,
                options: CarouselOptions(
                  height: constraints.maxHeight,
                  viewportFraction: 1,
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
              padding: const EdgeInsets.symmetric(vertical: 16.0),
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size(
                    (constraints.maxWidth > 412)
                        ? (constraints.maxWidth * 0.5)
                        : constraints.maxWidth,
                    50,
                  ),
                ),
                child: const Text("Continue"),
                onPressed: () {
                  // TODO : place sign up function here
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
      builder: (context, constraints) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: constraints.maxWidth - 16,
              height: constraints.maxWidth - 16,
              child: ClipOval(
                child: Container(
                    padding: const EdgeInsets.all(16.0),
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    child: image),
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(subtitle)
          ],
        ),
      ),
    );
  }
}
