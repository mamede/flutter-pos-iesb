import 'package:flutter/material.dart';

class CharactersInfo extends StatelessWidget {
  String name;
  String imageUrl;
  VoidCallback onTap;

  CharactersInfo({
    required this.name,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
              SizedBox(width: 15),
              Text(
                name,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
