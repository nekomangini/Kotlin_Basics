import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String listTileTitle;

  const CustomListTile({super.key, required this.listTileTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:
          Text(listTileTitle, style: const TextStyle(fontFamily: 'OpenSans')),
      tileColor: Colors.green[100], // Colors.green[100]
      trailing: const Icon(
        Icons.keyboard_arrow_right,
      ),
      // onTap: (() {
      //   return _ontapCallback;
      // }),
    );
  }
}
