import 'package:flutter/material.dart';

class ActivityScreen03 extends StatefulWidget {
  const ActivityScreen03({super.key});

  @override
  State<ActivityScreen03> createState() => _ActivityScreen03State();
}

class _ActivityScreen03State extends State<ActivityScreen03> {
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
                    return Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/avatar.png"),
                              ),
                            ),
                            const Text(
                              "John Doe",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            "Cillum non ad sint dolor sunt irure nostrud duis duis pariatur dolor est laboris ullamco. Dolore deserunt do incididunt elit eu Lorem do laborum dolor dolor esse consectetur. Lorem anim est et sit ea mollit. Culpa ullamco ea in esse proident id cupidatat consectetur deserunt ut aliquip aute mollit magna. Ut laborum aliqua aute enim aliqua aliqua elit sint labore ex. Commodo do laborum ex excepteur fugiat mollit eu deserunt ipsum sit dolor est amet irure.",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
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
