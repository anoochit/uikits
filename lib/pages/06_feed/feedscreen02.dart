import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedScreen02 extends StatefulWidget {
  const FeedScreen02({super.key});

  @override
  State<FeedScreen02> createState() => _FeedScreen02State();
}

class _FeedScreen02State extends State<FeedScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("News"),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.circlePlus),
            onPressed: () {
              // place add function here
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(
                      color: Colors.grey.shade100,
                    ),
                    borderRadius: BorderRadius.circular(64),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
                      border: InputBorder.none,
                    ),
                    onFieldSubmitted: (value) {
                      // place submit function here
                    },
                  ),
                ),
              ),
              MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const PostItem();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 16.0,
            ),
            child: const Text(
                "Culpa laborum aliquip labore amet. Quis aliqua minim enim ipsum cupidatat sunt minim. Consectetur laboris exercitation ullamco cillum nostrud ullamco dolore sunt id sint officia do. Minim aliquip laboris non laborum laborum laborum est mollit do adipisicing irure proident. Amet nostrud non sint incididunt eiusmod occaecat do ad culpa. Reprehenderit id sit fugiat adipisicing velit veniam proident irure eiusmod consequat aute eu."),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: const Text(
              "By Display Name",
              style: TextStyle(fontSize: 12.0),
            ),
          ),
          const Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
