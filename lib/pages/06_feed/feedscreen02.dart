import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedScreen02 extends StatefulWidget {
  FeedScreen02({Key? key}) : super(key: key);

  @override
  _FeedScreen02State createState() => _FeedScreen02State();
}

class _FeedScreen02State extends State<FeedScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("News"),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.circlePlus),
            onPressed: () {
              // place add function here
            },
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                onFieldSubmitted: (value) {
                  // place submit function here
                },
              ),
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return PostItem();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  const PostItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              child: Text(
                  "Culpa laborum aliquip labore amet. Quis aliqua minim enim ipsum cupidatat sunt minim. Consectetur laboris exercitation ullamco cillum nostrud ullamco dolore sunt id sint officia do. Minim aliquip laboris non laborum laborum laborum est mollit do adipisicing irure proident. Amet nostrud non sint incididunt eiusmod occaecat do ad culpa. Reprehenderit id sit fugiat adipisicing velit veniam proident irure eiusmod consequat aute eu."),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Text(
                "By Display Name",
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            Divider(
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}
