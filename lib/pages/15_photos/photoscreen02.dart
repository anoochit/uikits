import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PhotoScreen02 extends StatefulWidget {
  const PhotoScreen02({super.key});

  @override
  State<PhotoScreen02> createState() => _PhotoScreen02State();
}

class _PhotoScreen02State extends State<PhotoScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photos"),
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) => Column(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(
                      color: Colors.grey.shade100,
                    ),
                    borderRadius: BorderRadius.circular(64),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
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
                child: GridView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (constraints.maxWidth > 412) ? 4 : 2,
                  ),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: GridTile(
                        child: Image.asset('assets/images/placeholder.png',
                            fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
