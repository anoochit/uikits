import 'package:flutter/material.dart';

class PhotoScreen01 extends StatefulWidget {
  PhotoScreen01({Key? key}) : super(key: key);

  @override
  _PhotoScreen01State createState() => _PhotoScreen01State();
}

class _PhotoScreen01State extends State<PhotoScreen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photos"),
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
                    crossAxisCount: (constraints.maxWidth > 412) ? 4 : 3,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                  ),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Image.asset('assets/images/placeholder.png',
                          fit: BoxFit.cover),
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
