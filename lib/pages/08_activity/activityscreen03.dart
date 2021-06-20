import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class ActivityScreen03 extends StatefulWidget {
  ActivityScreen03({Key? key}) : super(key: key);

  @override
  _ActivityScreen03State createState() => _ActivityScreen03State();
}

class _ActivityScreen03State extends State<ActivityScreen03> {
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
        // appBar: AppBar(
        //   title: Text("Activity", style: TextStyle(color: Colors.black)),
        //   titleSpacing: 0,
        //   backgroundColor: Colors.white,
        //   iconTheme: IconThemeData(color: Colors.black),
        // ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    child: Text(
                      "Activity",
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage("assets/images/placeholder.png"),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "John Doe",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Cillum non ad sint dolor sunt irure nostrud duis duis pariatur dolor est laboris ullamco. Dolore deserunt do incididunt elit eu Lorem do laborum dolor dolor esse consectetur. Lorem anim est et sit ea mollit. Culpa ullamco ea in esse proident id cupidatat consectetur deserunt ut aliquip aute mollit magna. Ut laborum aliqua aute enim aliqua aliqua elit sint labore ex. Commodo do laborum ex excepteur fugiat mollit eu deserunt ipsum sit dolor est amet irure.",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Divider(thickness: 1)
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
