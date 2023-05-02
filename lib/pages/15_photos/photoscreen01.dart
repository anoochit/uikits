import 'package:flutter/material.dart';

class PhotoScreen01 extends StatefulWidget {
  const PhotoScreen01({super.key});

  @override
  State<PhotoScreen01> createState() => _PhotoScreen01State();
}

class _PhotoScreen01State extends State<PhotoScreen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photos"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (constraints.maxWidth > 412) ? 4 : 2,
                  ),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return GridTile(
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset('assets/images/placeholder.png',
                            fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
