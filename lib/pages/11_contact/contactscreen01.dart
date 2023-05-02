import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class ContactScreen01 extends StatefulWidget {
  const ContactScreen01({super.key});

  @override
  State<ContactScreen01> createState() => _ContactScreen01State();
}

class _ContactScreen01State extends State<ContactScreen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box),
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
                    decoration: const InputDecoration(
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
                  return const ListItem();
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
    var time = DateTime.now().subtract(const Duration(minutes: 9));
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/avatar.png'),
      ),
      title: const Text("Display Name"),
      subtitle: Text("Last seen ${timeago.format(time)}"),
    );
  }
}
