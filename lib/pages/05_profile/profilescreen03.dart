import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScreen03 extends StatefulWidget {
  ProfileScreen03({Key? key}) : super(key: key);

  @override
  _ProfileScreen03State createState() => _ProfileScreen03State();
}

class _ProfileScreen03State extends State<ProfileScreen03> {
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
            children: [
              Container(
                padding: EdgeInsets.only(top: 48.0),
                width: constraints.maxWidth,
                child:
                    // replace avatar image here
                    Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/placeholder.png'),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      // replace display name here
                      child: Text(
                        "John Doe",
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      // replace display name here
                      child: Text(
                        "@johndoe",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // place statistic here
                    BlockText(title: "Posts", value: 200),
                    BlockText(title: "Followers", value: 200),
                    BlockText(title: "Following", value: 200),
                  ],
                ),
              ),
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                    ),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Image.asset('assets/images/placeholder.png', fit: BoxFit.cover),
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

class BlockText extends StatelessWidget {
  const BlockText({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$value',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(title),
        ],
      ),
    );
  }
}
