import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:uikits2/pages/10_chat/sample_data.dart';

class ChatScreen03 extends StatefulWidget {
  ChatScreen03({Key? key}) : super(key: key);

  @override
  _ChatScreen03State createState() => _ChatScreen03State();
}

class _ChatScreen03State extends State<ChatScreen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("John Doe", style: TextStyle(color: Colors.black)),
            Spacer(),
            Container(
              padding: EdgeInsets.all(8),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
            )
          ],
        ),
        titleSpacing: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
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
              Container(
                child: Column(
                  children: [
                    Divider(height: 1, thickness: 1),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(FontAwesomeIcons.plus),
                          onPressed: () {
                            // add function show toolbar
                          },
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.image),
                          onPressed: () {
                            // add function show image picker
                          },
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.stickyNote),
                          onPressed: () {
                            // add function show sticker
                          },
                        ),
                        Container(
                          height: 40,
                          width: constraints.maxWidth - (200),
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade200),
                              borderRadius: BorderRadius.circular(16)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Type your message here'),
                          ),
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.paperPlane),
                          onPressed: () {
                            // add function send message
                          },
                        ),
                      ],
                    ),
                  ],
                ),
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
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            alignment: (owner) ? Alignment.bottomRight : Alignment.bottomLeft,
            child: Row(
              children: [
                (!owner)
                    ? Container(
                        padding: EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(avatar),
                        ),
                      )
                    : Spacer(),
                Column(
                  crossAxisAlignment: (owner)
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: constraints.maxWidth * 0.6,
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                          color: (owner)
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).primaryColorLight,
                          borderRadius: BorderRadiusDirectional.circular(16)),
                      child: Text(content),
                    ),
                    Container(
                      child: Text(
                        timeago.format(timestamp),
                        style: TextStyle(fontSize: 10.0),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        } else if (type == 1) {
          // image
          return Container(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            alignment: (owner) ? Alignment.bottomRight : Alignment.bottomLeft,
            child: Row(
              children: [
                (!owner)
                    ? Container(
                        padding: EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(avatar),
                        ),
                      )
                    : Spacer(),
                Column(
                  crossAxisAlignment: (owner)
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    InkWell(
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
                        log("show image = " + content);
                      },
                    ),
                    Container(
                      child: Text(
                        timeago.format(timestamp),
                        style: TextStyle(fontSize: 10.0),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        } else if (type == 2) {
          // sticker
          return Container(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            alignment: (owner) ? Alignment.bottomRight : Alignment.bottomLeft,
            child: Row(
              children: [
                (!owner)
                    ? Container(
                        padding: EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(avatar),
                        ),
                      )
                    : Spacer(),
                Column(
                  crossAxisAlignment: (owner)
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.asset(content),
                    ),
                    Container(
                      child: Text(
                        timeago.format(timestamp),
                        style: TextStyle(fontSize: 10.0),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        } else if (type == 3) {
          // audio
          return Container(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            alignment: (owner) ? Alignment.bottomRight : Alignment.bottomLeft,
            child: Row(
              children: [
                (!owner)
                    ? Container(
                        padding: EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(avatar),
                        ),
                      )
                    : Spacer(),
                Column(
                  crossAxisAlignment: (owner)
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Container(
                        width: 200,
                        height: 200,
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius:
                                  BorderRadiusDirectional.circular(16)),
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
                        log("play audio = " + content);
                      },
                    ),
                    Container(
                      child: Text(
                        timeago.format(timestamp),
                        style: TextStyle(fontSize: 10.0),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        } else if (type == 4) {
          // video
          return Container(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            alignment: (owner) ? Alignment.bottomRight : Alignment.bottomLeft,
            child: Row(
              children: [
                (!owner)
                    ? Container(
                        padding: EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(avatar),
                        ),
                      )
                    : Spacer(),
                Column(
                  crossAxisAlignment: (owner)
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Container(
                        width: 200,
                        height: 200,
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius:
                                  BorderRadiusDirectional.circular(16)),
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
                        log("play video = " + content);
                      },
                    ),
                    Container(
                      child: Text(
                        timeago.format(timestamp),
                        style: TextStyle(fontSize: 10.0),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        } else {
          return Text("not support message type");
        }
      },
    );
  }
}
