import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class ContactScreen01 extends StatefulWidget {
  ContactScreen01({Key? key}) : super(key: key);

  @override
  _ContactScreen01State createState() => _ContactScreen01State();
}

class _ContactScreen01State extends State<ContactScreen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box),
            onPressed: () {
              // place save function here
            },
          ),
        ],
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon:
                          Icon(FontAwesomeIcons.magnifyingGlass, size: 20),
                      border: InputBorder.none,
                    ),
                    onFieldSubmitted: (value) {
                      // place submit function here
                    },
                  ),
                ),
              ),
              Column(
                children: List.generate(20, (index) {
                  return ListItem();
                }),
              )
            ],
          ),
        );
      }),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var time = new DateTime.now().subtract(new Duration(minutes: 9));
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                child: Text(
                  "Display Name",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                child: Text(
                  "Last seen " + timeago.format(time),
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
