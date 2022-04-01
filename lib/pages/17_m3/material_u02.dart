import 'package:flutter/material.dart';

class MaterialUScreen02 extends StatelessWidget {
  const MaterialUScreen02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 128.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('App Bar'),
              centerTitle: true,
              background: FlutterLogo(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Title List"),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('A'),
                  ),
                  title: Text('Item ${index + 1}'),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
