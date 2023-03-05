import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uikits2/pages/10_chat/sample_data.dart';

class ChatScreen02 extends StatefulWidget {
  const ChatScreen02({super.key});

  @override
  State<ChatScreen02> createState() => _ChatScreen02State();
}

class _ChatScreen02State extends State<ChatScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            const Text(
              "John Doe",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(8),
              child: const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
            )
          ],
        ),
        titleSpacing: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // chat messages
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                    reverse: true,
                    itemCount: reversedListMessage.length,
                    itemBuilder: (BuildContext context, int index) {
                      return chatMessageItem(
                          id: reversedListMessage[index].id,
                          content: reversedListMessage[index].content,
                          type: reversedListMessage[index].type,
                          timestamp: reversedListMessage[index].timestamp,
                          avatar: reversedListMessage[index].avatar,
                          displayName: reversedListMessage[index].displayName,
                          owner: reversedListMessage[index].owner);
                    },
                  ),
                ),
              ),
              // toolbar
              Column(
                children: [
                  const Divider(height: 1, thickness: 1),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(FontAwesomeIcons.plus),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(FontAwesomeIcons.image),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(FontAwesomeIcons.noteSticky),
                        onPressed: () {},
                      ),
                      Container(
                        height: 40,
                        width: constraints.maxWidth - (200),
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type your message here',
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(FontAwesomeIcons.paperPlane),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // message widget
  Widget chatMessageItem(
      {required int id,
      required String content,
      required int type,
      required DateTime timestamp,
      required String avatar,
      required String displayName,
      required bool owner}) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (type == 0) {
          // text
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            alignment: (owner) ? Alignment.bottomRight : Alignment.bottomLeft,
            child: Container(
              width: constraints.maxWidth * 0.6,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: (owner)
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).primaryColorLight,
                  borderRadius: BorderRadiusDirectional.circular(16)),
              child: Text(content),
            ),
          );
        } else if (type == 1) {
          // image
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            alignment: (owner) ? Alignment.bottomRight : Alignment.bottomLeft,
            child: InkWell(
              child: Container(
                width: 200,
                height: 200,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                    color: (owner)
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).primaryColorLight,
                    borderRadius: BorderRadiusDirectional.circular(16)),
                child: Image.asset(content, fit: BoxFit.cover),
              ),
              onTap: () {
                // show image
                log("show image = $content");
              },
            ),
          );
        } else if (type == 2) {
          // sticker
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            alignment: (owner) ? Alignment.bottomRight : Alignment.bottomLeft,
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(content),
            ),
          );
        } else if (type == 3) {
          // audio
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            alignment: (owner) ? Alignment.bottomRight : Alignment.bottomLeft,
            child: InkWell(
              child: SizedBox(
                width: 200,
                height: 200,
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadiusDirectional.circular(16)),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Icon(
                          Icons.audiotrack,
                          color: Colors.grey.withOpacity(0.8),
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                // play audio
                log("play audio = $content");
              },
            ),
          );
        } else if (type == 4) {
          // video
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            alignment: (owner) ? Alignment.bottomRight : Alignment.bottomLeft,
            child: InkWell(
              child: SizedBox(
                width: 200,
                height: 200,
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadiusDirectional.circular(16)),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.grey.withOpacity(0.8),
                          size: 50,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              onTap: () {
                // play video
                log("play video = $content");
              },
            ),
          );
        } else {
          return const Text("not support message type");
        }
      },
    );
  }
}
