import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArticleScreen05 extends StatefulWidget {
  ArticleScreen05({Key? key}) : super(key: key);

  @override
  _ArticleScreen05State createState() => _ArticleScreen05State();
}

class _ArticleScreen05State extends State<ArticleScreen05> {
  @override
  Widget build(BuildContext context) {
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
          builder: (context, constraints) => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: constraints.maxWidth,
                      height: 500,
                      child: Image.asset(
                        'assets/images/placeholder.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("Article Category"),
                          ),
                          Container(
                            width: constraints.maxWidth,
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Et incididunt eu non commodo proident esse amet non elit amet consectetur aute ut id.",
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          IconButton(
                            icon: Icon(FontAwesomeIcons.thumbsUp),
                            onPressed: () {
                              // place link function here
                            },
                          ),
                          Text("Like")
                        ],
                      ),
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          IconButton(
                            icon: Icon(FontAwesomeIcons.comment),
                            onPressed: () {
                              // place comment function here
                            },
                          ),
                          Text("Comment")
                        ],
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Et incididunt eu non commodo proident esse amet non elit amet consectetur aute ut id.",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Tempor exercitation mollit voluptate sunt proident ut consequat fugiat ullamco magna duis do. Magna enim cupidatat esse fugiat id aliqua esse. Anim occaecat amet eu consequat elit qui qui ipsum nisi nostrud.",
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Sit exercitation labore cupidatat ut. Cillum quis sit occaecat ea deserunt fugiat et. Occaecat ut ea sunt labore consequat ipsum anim dolor culpa ipsum.",
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Sit exercitation labore cupidatat ut. Cillum quis sit occaecat ea deserunt fugiat et. Occaecat ut ea sunt labore consequat ipsum anim dolor culpa ipsum.",
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                          padding: EdgeInsets.all(32),
                          width: constraints.maxWidth,
                          color: Colors.white.withOpacity(0.8),
                          child: ElevatedButton(
                            child: Text("Read More"),
                            onPressed: () {},
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
