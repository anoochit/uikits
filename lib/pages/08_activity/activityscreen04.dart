import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class ActivityScreen04 extends StatefulWidget {
  const ActivityScreen04({super.key});

  @override
  State<ActivityScreen04> createState() => _ActivityScreen04State();
}

class _ActivityScreen04State extends State<ActivityScreen04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Activity"),
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
                    final fifteenAgo = DateTime.now().subtract(
                      const Duration(
                        minutes: 15,
                      ),
                    );
                    return Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              padding: const EdgeInsets.all(8.0),
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
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Text(
                                    "Cillum non ad sint dolor sunt irure nostrud duis duis pariatur dolor est laboris ullamco. Dolore deserunt do incididunt elit eu Lorem do laborum dolor dolor esse consectetur. Lorem anim est et sit ea mollit. Culpa ullamco ea in esse proident id cupidatat consectetur deserunt ut aliquip aute mollit magna. Ut laborum aliqua aute enim aliqua aliqua elit sint labore ex. Commodo do laborum ex excepteur fugiat mollit eu deserunt ipsum sit dolor est amet irure.",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    timeago.format(fifteenAgo),
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Divider(thickness: 1)
                      ],
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
