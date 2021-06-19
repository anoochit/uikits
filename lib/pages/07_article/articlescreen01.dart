import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class ArticleScreen01 extends StatefulWidget {
  ArticleScreen01({Key? key}) : super(key: key);

  @override
  _ArticleScreen01State createState() => _ArticleScreen01State();
}

class _ArticleScreen01State extends State<ArticleScreen01> {
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
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: constraints.maxWidth,
                    height: 300,
                    child: Image.asset('assets/images/placeholder.png', fit: BoxFit.cover),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Article Category"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Et incididunt eu non commodo proident esse amet non elit amet consectetur aute ut id.",
                      style: TextStyle(fontSize: 22),
                    ),
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
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Sit exercitation labore cupidatat ut. Cillum quis sit occaecat ea deserunt fugiat et. Occaecat ut ea sunt labore consequat ipsum anim dolor culpa ipsum.",
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Eiusmod veniam nulla ea occaecat cupidatat. Elit aliqua voluptate ut minim est Lorem nisi do. Aute id laborum do fugiat non ea reprehenderit non ea minim aute ipsum minim. Irure dolore aute eu ad do et deserunt elit adipisicing.",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
