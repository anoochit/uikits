import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArticleScreen01 extends StatefulWidget {
  const ArticleScreen01({super.key});

  @override
  State<ArticleScreen01> createState() => _ArticleScreen01State();
}

class _ArticleScreen01State extends State<ArticleScreen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: constraints.maxWidth,
                height: 300,
                child: Image.asset('assets/images/placeholder.png',
                    fit: BoxFit.cover),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Article Category",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Et incididunt eu non commodo proident esse amet non elit amet consectetur aute ut id.",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              Row(
                children: [
                  TextButton.icon(
                    icon: const Icon(FontAwesomeIcons.thumbsUp),
                    onPressed: () {
                      // place link function here
                    },
                    label: const Text("Like"),
                  ),
                  TextButton.icon(
                    icon: const Icon(FontAwesomeIcons.comment),
                    onPressed: () {
                      // place comment function here
                    },
                    label: const Text("Comment"),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Et incididunt eu non commodo proident esse amet non elit amet consectetur aute ut id.",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Ea minim quis eu enim fugiat do fugiat non quis incididunt. Velit duis consequat cupidatat quis quis occaecat ad do aliqua tempor reprehenderit. Nostrud elit proident deserunt consequat et anim. Laboris nisi ex voluptate enim magna labore nostrud magna sunt eu eiusmod nostrud. Fugiat laboris reprehenderit dolore non in ullamco. Consectetur consequat dolor est aliquip ullamco nisi voluptate. Ut reprehenderit elit cupidatat nostrud anim laboris culpa enim officia reprehenderit proident duis culpa. Consequat magna anim amet do amet labore laboris ea cupidatat anim et ea. Non reprehenderit et cupidatat eiusmod mollit laboris deserunt consectetur ullamco. Cupidatat deserunt duis eu cillum enim sit sint exercitation ad. Quis eu nostrud commodo reprehenderit fugiat proident tempor. Quis labore cupidatat voluptate amet reprehenderit nostrud do cupidatat laborum velit. Aliqua ipsum quis in adipisicing. Aliqua occaecat sit pariatur anim est nostrud deserunt nulla irure cupidatat. Cupidatat sint Lorem ipsum cillum qui dolore laboris minim deserunt enim aute occaecat magna. Aliquip sunt aliquip ad cillum velit. Aliquip officia non sunt dolor deserunt nostrud aute est voluptate nostrud. Eu sint sit quis commodo nulla nulla proident esse enim eiusmod voluptate nulla sunt.",
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Ea minim quis eu enim fugiat do fugiat non quis incididunt. Velit duis consequat cupidatat quis quis occaecat ad do aliqua tempor reprehenderit. Nostrud elit proident deserunt consequat et anim. Laboris nisi ex voluptate enim magna labore nostrud magna sunt eu eiusmod nostrud. Fugiat laboris reprehenderit dolore non in ullamco. Consectetur consequat dolor est aliquip ullamco nisi voluptate. Ut reprehenderit elit cupidatat nostrud anim laboris culpa enim officia reprehenderit proident duis culpa. Consequat magna anim amet do amet labore laboris ea cupidatat anim et ea. Non reprehenderit et cupidatat eiusmod mollit laboris deserunt consectetur ullamco. Cupidatat deserunt duis eu cillum enim sit sint exercitation ad. Quis eu nostrud commodo reprehenderit fugiat proident tempor. Quis labore cupidatat voluptate amet reprehenderit nostrud do cupidatat laborum velit. Aliqua ipsum quis in adipisicing. Aliqua occaecat sit pariatur anim est nostrud deserunt nulla irure cupidatat. Cupidatat sint Lorem ipsum cillum qui dolore laboris minim deserunt enim aute occaecat magna. Aliquip sunt aliquip ad cillum velit. Aliquip officia non sunt dolor deserunt nostrud aute est voluptate nostrud. Eu sint sit quis commodo nulla nulla proident esse enim eiusmod voluptate nulla sunt.",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
