import 'package:flutter/material.dart';

class CreateScreen01 extends StatefulWidget {
  CreateScreen01({Key? key}) : super(key: key);

  @override
  _CreateScreen01State createState() => _CreateScreen01State();
}

class _CreateScreen01State extends State<CreateScreen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // place save function here
            },
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Type your message...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                maxLines: 10,
                onFieldSubmitted: (value) {
                  // place submit function here
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: constraints.maxWidth,
              child: ElevatedButton(
                child: Text("Publish"),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
