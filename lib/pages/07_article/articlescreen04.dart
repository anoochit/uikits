import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class ArticleScreen04 extends StatefulWidget {
  ArticleScreen04({Key? key}) : super(key: key);

  @override
  _ArticleScreen04State createState() => _ArticleScreen04State();
}

class _ArticleScreen04State extends State<ArticleScreen04> {
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
                      height: 300,
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
                            "Ullamco labore incididunt sunt sunt eiusmod esse anim. Laborum est exercitation elit duis aute aliqua id irure. Irure do quis in ea sint tempor eiusmod reprehenderit. Commodo ex elit voluptate ut culpa anim Lorem duis consectetur qui. Fugiat non excepteur sit sunt mollit nulla in qui do.",
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Sit irure consequat incididunt non occaecat laborum. Minim tempor aliqua qui et ex. Fugiat quis et aliqua esse exercitation enim cillum laborum enim enim consequat. Proident eu commodo laborum ad do cillum est. Officia ullamco reprehenderit non quis ea ea sit esse exercitation nostrud laborum aute dolor. Sunt veniam esse laboris excepteur.",
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
