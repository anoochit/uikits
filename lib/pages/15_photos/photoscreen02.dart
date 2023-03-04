import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PhotoScreen02 extends StatefulWidget {
  PhotoScreen02({Key? key}) : super(key: key);

  @override
  _PhotoScreen02State createState() => _PhotoScreen02State();
}

class _PhotoScreen02State extends State<PhotoScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photos"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
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
