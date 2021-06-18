import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScreen02 extends StatefulWidget {
  ProfileScreen02({Key? key}) : super(key: key);

  @override
  _ProfileScreen02State createState() => _ProfileScreen02State();
}

class _ProfileScreen02State extends State<ProfileScreen02> {
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
                width: constraints.maxWidth,
                padding: EdgeInsets.only(top: 48, bottom: 16, left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // replace avatar image here
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/placeholder.png'),
                    ),
                    // place statistic here
                    BlockText(title: "Posts", value: 200),
                    BlockText(title: "Followers", value: 200),
                    BlockText(title: "Following", value: 200),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      // replace display name here
                      child: Text(
                        "John Doe",
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                    // replace profile detail here
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Id sint veniam non irure dolore enim ea. Sit sint cillum consectetur voluptate eiusmod. Ad excepteur cillum fugiat id aliquip exercitation. "),
                    )
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
                        color: Colors.amber,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$value',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(title),
        ],
      ),
    );
  }
}
