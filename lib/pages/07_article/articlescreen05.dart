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
        systemNavigationBarIconBrightness:
            Brightness.dark, //navigation bar icons' color
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
                            child: Text(
                              "Article Category",
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ),
                          Container(
                            width: constraints.maxWidth,
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Et incididunt eu non commodo proident esse amet non elit amet consectetur aute ut id.",
                              style: Theme.of(context).textTheme.headlineMedium,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      TextButton.icon(
                        icon: Icon(FontAwesomeIcons.thumbsUp),
                        onPressed: () {
                          // place link function here
                        },
                        label: Text("Like"),
                      ),
                      TextButton.icon(
                        icon: Icon(FontAwesomeIcons.comment),
                        onPressed: () {
                          // place comment function here
                        },
                        label: Text("Comment"),
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
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Ea minim quis eu enim fugiat do fugiat non quis incididunt. Velit duis consequat cupidatat quis quis occaecat ad do aliqua tempor reprehenderit. Nostrud elit proident deserunt consequat et anim. Laboris nisi ex voluptate enim magna labore nostrud magna sunt eu eiusmod nostrud. Fugiat laboris reprehenderit dolore non in ullamco. Consectetur consequat dolor est aliquip ullamco nisi voluptate. Ut reprehenderit elit cupidatat nostrud anim laboris culpa enim officia reprehenderit proident duis culpa. Consequat magna anim amet do amet labore laboris ea cupidatat anim et ea. Non reprehenderit et cupidatat eiusmod mollit laboris deserunt consectetur ullamco. Cupidatat deserunt duis eu cillum enim sit sint exercitation ad. Quis eu nostrud commodo reprehenderit fugiat proident tempor. Quis labore cupidatat voluptate amet reprehenderit nostrud do cupidatat laborum velit. Aliqua ipsum quis in adipisicing. Aliqua occaecat sit pariatur anim est nostrud deserunt nulla irure cupidatat. Cupidatat sint Lorem ipsum cillum qui dolore laboris minim deserunt enim aute occaecat magna. Aliquip sunt aliquip ad cillum velit. Aliquip officia non sunt dolor deserunt nostrud aute est voluptate nostrud. Eu sint sit quis commodo nulla nulla proident esse enim eiusmod voluptate nulla sunt.",
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Ea minim quis eu enim fugiat do fugiat non quis incididunt. Velit duis consequat cupidatat quis quis occaecat ad do aliqua tempor reprehenderit. Nostrud elit proident deserunt consequat et anim. Laboris nisi ex voluptate enim magna labore nostrud magna sunt eu eiusmod nostrud. Fugiat laboris reprehenderit dolore non in ullamco. Consectetur consequat dolor est aliquip ullamco nisi voluptate. Ut reprehenderit elit cupidatat nostrud anim laboris culpa enim officia reprehenderit proident duis culpa. Consequat magna anim amet do amet labore laboris ea cupidatat anim et ea. Non reprehenderit et cupidatat eiusmod mollit laboris deserunt consectetur ullamco. Cupidatat deserunt duis eu cillum enim sit sint exercitation ad. Quis eu nostrud commodo reprehenderit fugiat proident tempor. Quis labore cupidatat voluptate amet reprehenderit nostrud do cupidatat laborum velit. Aliqua ipsum quis in adipisicing. Aliqua occaecat sit pariatur anim est nostrud deserunt nulla irure cupidatat. Cupidatat sint Lorem ipsum cillum qui dolore laboris minim deserunt enim aute occaecat magna. Aliquip sunt aliquip ad cillum velit. Aliquip officia non sunt dolor deserunt nostrud aute est voluptate nostrud. Eu sint sit quis commodo nulla nulla proident esse enim eiusmod voluptate nulla sunt.",
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
                        ),
                      ),
                    ),
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
