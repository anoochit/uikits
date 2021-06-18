import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScreen04 extends StatefulWidget {
  ProfileScreen04({Key? key}) : super(key: key);

  @override
  _ProfileScreen04State createState() => _ProfileScreen04State();
}

class _ProfileScreen04State extends State<ProfileScreen04> {
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
          builder: (context, constraints) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Profile",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ),
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (BuildContext context, int index) {
                      if ((index == 0) || (index == 5)) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: constraints.maxWidth,
                              color: Colors.grey.shade200,
                              padding: EdgeInsets.only(left: 16.0, top: 8, bottom: 8),
                              child: Text((index == 0) ? "Friends" : "Nearby Friends"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 24,
                                    backgroundImage: AssetImage('assets/images/placeholder.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('item $index'),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      }
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage('assets/images/placeholder.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('item $index'),
                            )
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
    );
  }
}
