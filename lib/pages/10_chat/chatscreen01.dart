import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class ChatScreen01 extends StatefulWidget {
  const ChatScreen01({super.key});

  @override
  State<ChatScreen01> createState() => _ChatScreen01State();
}

class _ChatScreen01State extends State<ChatScreen01> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Chat"),
          actions: [
            IconButton(
              icon: const Icon(Icons.add_box),
              onPressed: () {
                // place save function here
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraints) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: Theme.of(context).textTheme.bodyMedium,
                        prefixIcon:
                            const Icon(FontAwesomeIcons.magnifyingGlass),
                        border: InputBorder.none,
                      ),
                      onFieldSubmitted: (value) {
                        // place submit function here
                      },
                    ),
                  ),
                ),
                MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: (BuildContext context, int index) {
                      // if index == 0 insert divider with title "Unread messages"
                      // if index == 5 indert divider with title "All messages"
                      if ((index == 0) || (index == 5)) {
                        return ListDivider(
                            constraints: constraints, index: index);
                      }
                      return ListItem(index: index);
                    },
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

class ListDivider extends StatelessWidget {
  const ListDivider({
    Key? key,
    required this.constraints,
    required this.index,
  }) : super(key: key);

  final BoxConstraints constraints;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: constraints.maxWidth,
          color: Colors.grey.shade200,
          padding: const EdgeInsets.only(left: 16.0, top: 8, bottom: 8),
          // if index == 0 insert divider with title "Unread messages"
          // if index == 5 indert divider with title "All messages"
          child: Text(
            (index == 0) ? "Unread messages" : "All messages",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListItem(index: index)
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final fifteenAgo = DateTime.now().subtract(const Duration(minutes: 15));

    return ListTile(
      leading: const CircleAvatar(
        radius: 24,
        backgroundImage: AssetImage('assets/images/avatar.png'),
      ),
      title: const Text("Veniam elit nisi est elit sint"),
      subtitle: const Text("Display Name"),
      trailing: Text(
        timeago.format(fifteenAgo, locale: 'en_short'),
        style: const TextStyle(fontSize: 12.0),
      ),
    );
  }
}
