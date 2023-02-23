import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class ActivityScreen04 extends StatefulWidget {
  ActivityScreen04({Key? key}) : super(key: key);

  @override
  _ActivityScreen04State createState() => _ActivityScreen04State();
}

class _ActivityScreen04State extends State<ActivityScreen04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    final fifteenAgo =
                        new DateTime.now().subtract(new Duration(minutes: 15));
                    return Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                padding: EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/images/placeholder.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: constraints.maxWidth - 100,
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Cillum non ad sint dolor sunt irure nostrud duis duis pariatur dolor est laboris ullamco. Dolore deserunt do incididunt elit eu Lorem do laborum dolor dolor esse consectetur. Lorem anim est et sit ea mollit. Culpa ullamco ea in esse proident id cupidatat consectetur deserunt ut aliquip aute mollit magna. Ut laborum aliqua aute enim aliqua aliqua elit sint labore ex. Commodo do laborum ex excepteur fugiat mollit eu deserunt ipsum sit dolor est amet irure.",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      timeago.format(fifteenAgo),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Divider(thickness: 1)
                        ],
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
