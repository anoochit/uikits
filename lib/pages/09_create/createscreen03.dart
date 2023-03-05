import 'package:flutter/material.dart';

class CreateScreen03 extends StatefulWidget {
  const CreateScreen03({super.key});

  @override
  State<CreateScreen03> createState() => _CreateScreen03State();
}

class _CreateScreen03State extends State<CreateScreen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create"),
        actions: [
          IconButton(
            icon: const Icon(Icons.send),
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
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Title',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Description',
                      ),
                      maxLines: 10,
                    ),
                  ),
                  SizedBox(
                    width: constraints.maxWidth,
                    child: ElevatedButton(
                      child: const Text("Publish"),
                      onPressed: () {
                        // place publish function here
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
