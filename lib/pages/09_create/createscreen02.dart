import 'package:flutter/material.dart';

class CreateScreen02 extends StatefulWidget {
  const CreateScreen02({super.key});

  @override
  State<CreateScreen02> createState() => _CreateScreen02State();
}

class _CreateScreen02State extends State<CreateScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create"),
        actions: [
          IconButton(
            icon: const Icon(Icons.save_outlined),
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
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'To',
                    ),
                    onFieldSubmitted: (value) {
                      // place submit function here
                    },
                  ),
                  const Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Subject',
                    ),
                    onFieldSubmitted: (value) {
                      // place submit function here
                    },
                  ),
                  const Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Message',
                    ),
                    maxLines: 10,
                    onFieldSubmitted: (value) {
                      // place submit function here
                    },
                  ),
                  const Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    width: constraints.maxWidth,
                    child: ElevatedButton(
                      child: const Text("Publish"),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
