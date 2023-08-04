import 'package:flutter/material.dart';
import 'package:rick_morty_flutter/widgets/info.dart';

class AppBarItem extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
          icon: Icon(Icons.info),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InfoScreen(),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
