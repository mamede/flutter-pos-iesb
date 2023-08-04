import 'package:flutter/material.dart';
import 'package:rick_morty_flutter/widgets/specs.dart';
import 'package:rick_morty_flutter/widgets/appbar.dart';

class DetailScreen extends StatelessWidget {
  final dynamic character;

  const DetailScreen({required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarItem(title: '${character['name']}'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(character['image']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              '${character['name']}',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SpecsCard(
              url: 'icons/especie.jpg',
              title: 'Especie',
              description: '${character['species']}',
            ),
            SpecsCard(
              url: 'icons/genero.jpg',
              title: 'Gênero',
              description: '${character['gender']}',
            ),
            SpecsCard(
              url: 'icons/origem.jpg',
              title: 'Origem',
              description: '${character['origin']['name']}',
            ),
            SpecsCard(
              url: 'icons/estadia.jpg',
              title: 'Estadia Atual',
              description: '${character['location']['name']}',
            ),
          ],
        ),
      ),
    );
  }
}
