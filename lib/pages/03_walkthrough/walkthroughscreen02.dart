import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ms_undraw/ms_undraw.dart';

class WalkthroughScreen02 extends StatefulWidget {
  const WalkthroughScreen02({super.key});

  @override
  State<WalkthroughScreen02> createState() => _WalkthroughScreen02State();
}

class _WalkthroughScreen02State extends State<WalkthroughScreen02> {
  // list carousel
  List<Widget> listCarousel(BuildContext context) {
    return [
      CarouselPage(
        image: UnDraw(
          illustration: UnDrawIllustration.mobile,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: "Instruction Page 1",
        subtitle: "Dolore anim fugiat enim voluptate elit laborum.",
      ),
      CarouselPage(
        image: UnDraw(
          illustration: UnDrawIllustration.mobile_analytics,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: "Instruction Page 2",
        subtitle: "Do qui aliqua exercitation anim minim mollit.",
      ),
      CarouselPage(
        image: UnDraw(
          illustration: UnDrawIllustration.mobile_application,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: "Instruction Page 3",
        subtitle: "Irure officia ad laboris do sunt enim sunt mollit velit.",
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
      body: Column(
        children: [
          Spacer(),
          CarouselSlider(
            items: listCarouselPage,
            options: CarouselOptions(
              height: MediaQuery.sizeOf(context).height * 0.8,
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
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
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
          const SizedBox(height: 32.0),
          Container(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 16.0,
            ),
            alignment: Alignment.bottomCenter,
            child: FilledButton(
              style: FilledButton.styleFrom(
                minimumSize: Size(
                  (MediaQuery.sizeOf(context).width > 412)
                      ? (MediaQuery.sizeOf(context).width * 0.5)
                      : MediaQuery.sizeOf(context).width,
                  50,
                ),
              ),
              child: const Text("Continue"),
              onPressed: () {
                // TODO : place skip function here
              },
            ),
          ),
          const SizedBox(height: 16.0),
        ],
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
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          SizedBox(
            width: constraints.maxWidth * 0.8,
            height: constraints.maxHeight * 0.8,
            child: image,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 16.0),
          Text(
            subtitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      );
    });
  }
}
