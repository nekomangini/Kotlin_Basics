import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'custom_list_tile.dart';

class CustomOpenContainer extends StatelessWidget {
  final String dataContent;
  final String submenuTitle;

  const CustomOpenContainer(
      {super.key, required this.dataContent, required this.submenuTitle});

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionDuration: const Duration(milliseconds: 500),
      openBuilder: (ctx, action) => Scaffold(
        backgroundColor: Colors.green[100],
        body: Center(
          child: Markdown(
            // to prevent Exception caught by gesture set shrinkwrap to false
            shrinkWrap: false,
            // make text selectable
            selectable: true,
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
            data: dataContent,
            // to edit markdown styling
            styleSheet: MarkdownStyleSheet(
              code: TextStyle(
                // text color of code
                color: Colors.indigo,
                // background color of code
                backgroundColor: Colors.green[200],
              ),
              // background color and border radius of code
              codeblockDecoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(10.0)),
              // font family of paragraphs
              p: const TextStyle(
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ),
      closedBuilder: (ctx, action) => Column(
        children: [
          CustomListTile(listTileTitle: submenuTitle),
        ],
      ),
    );
  }
}
